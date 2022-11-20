# Copyright (C) 2017  Luca Massarelli
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

from core.AndroidToolInterface import AndroidToolInterface
import click
from core.EmulatorInterface import EmulatorInterface
from util.Logger import Logger
import os
import re
import shutil
import threading


# This class implements a utility to prepare a workspace for the automatic execution of
# malware samples.

class WorkspacePreparator:
    datasetPath = ""
    workspacePath = ""
    obfuscatorPath = ""
    emulator = ""
    playerPath = ""
    VMName = ""
    androidToolInterface = ""
    logger = ""
    test = "run"
    error = False

    # The constructor
    # @param datasetPath = path of the drebin dataset
    # @param workspacePath = path of workspace to create
    # @param playerPath = path of the genymotion player bin
    # @param VMName = name of the virtual machine to use
    # @param test = "run" if you want to check if an apk is runnable
    # 				"obfrun" if you want to obfuscate an apk with shield4j and check if it run
    #				"none" to copy only the apk
    # @param obfuscatorPath = path of the shield4J obfuscator
    def __init__(self, datasetPath, workspacePath, emulator, playerPath, VMName, test, obfuscatorPath):
        self.datasetPath = datasetPath
        self.workspacePath = workspacePath
        self.emulator = emulator
        self.playerPath = playerPath
        self.VMName = VMName
        self.test = test
        self.obfuscatorPath = obfuscatorPath
        self.androidToolInterface = AndroidToolInterface()
        self.logger = Logger(3)
        print(self.emulator)

    # This methods check if an apk directory already exists. if it exist it creates a new
    # folder with the incremental name of the package
    # @param packageName = name of the package for which create the directory
    def checkApkDir(self, packageName):
        count = 0
        dirName = self.workspacePath + packageName + "_" + str(count)
        while os.path.isdir(dirName):
            count += 1
            dirName = self.workspacePath + packageName + "_" + str(count)
        os.mkdir(dirName)
        self.logger.log("INFO", "CREATED DIRECTORY: {}".format(dirName))
        return dirName

    # This method remove a folder
    # @param folder = the name of the folder to remove
    def removeFromWorkspace(self, folder):
        files = os.listdir(folder)
        for file in files:
            os.remove(folder + "/" + file)
        os.rmdir(folder)

    # This method start the creation of the workspace
    def prepareWorkspace(self):
        datasetFiles = os.listdir(self.datasetPath)
        copiedCount = 0
        self.logger.log("INFO", "FOUND {} IN DATASET FOLDER".format(len(datasetFiles)))
        # regex = re.compile('\w{64}')
        for file in datasetFiles:
            # if (regex.match(file) != None):
            self.logger.log("INFO", "ANALISING FILE: {}".format(file))
            packageName = self.androidToolInterface.findPackageName(self.datasetPath + file)
            if packageName != -1:
                self.logger.log("DEBUG", "PACKAGE NAME: {}".format(packageName))
                folder = self.checkApkDir(packageName)
                if folder != "-1":
                    shutil.move(self.datasetPath + file, folder + "/" + file)
                    os.rename(folder + "/" + file, folder + "/" + file)
                    fileName = folder + "/" + file
                    testResult = self.testPackage(fileName, folder, packageName)
                    if testResult == -1:
                        self.logger.log("ERROR", "ERROR TESTING PACKAGE, DELETING FOLDER")
                        self.removeFromWorkspace(folder)
                        # os.remove(folder+"/*");
                        # os.rmdir(folder);
                    else:
                        self.logger.log("INFO", "TEST POSITIVE - PACKAGE OK")
                        copiedCount += 1
                else:
                    self.logger.log("INFO", "PACKAGE ALREADY PRESENT -- SKIPPING")

        self.logger.log("INFO", "WORKSPACE READY, {} FILES COPIED".format(copiedCount))

    # This method start the monkey tool to simulate inputs for an application
    # @param packageName = name of the package for which simulates inputs
    # @param monkeyOption = string with launch option for monkey tools
    def monkeyThread(self, packageName, monkeyOption):
        res = self.androidToolInterface.runApplication(packageName, monkeyOption)
        if res == -1:
            self.logger.log("ERROR", "ERROR RUNNING APPLICATION")
            self.error = True

    # This method install and run an apk.
    # @param apkName = name of the apk to install
    # @param packageName = name of the package contained in the apk
    def InstallAndRun(self, apkName, packageName):
        genyUtil = EmulatorInterface(self.playerPath, self.VMName, self.emulator)
        # genyUtil.restoreSnapshot("Snap1") # Elad add : seems to be useless
        genyUtil.runEmulator()
        res = self.androidToolInterface.installAPK(apkName)
        if res == -1:
            self.logger.log("ERROR", "ERROR INSTALLING APK")
            genyUtil.stopEmulator()
            return -1
        monkeyOption = "--throttle 1 --pct-syskeys 0 10000"

        self.error = False
        monkeyThread = threading.Thread(target=self.monkeyThread, args=[packageName, monkeyOption])
        monkeyThread.start()
        monkeyThread.join(300)

        if monkeyThread.is_alive():
            self.logger.log("INFO", "MONKEY THREAD TIMEOUT")
            self.error = True

        genyUtil.stopEmulator()
        if self.error:
            return -1
        else:
            return 0

    # This method obfuscate an apk with shield4J
    # @param filename = name of the apk to obfuscate
    # @param obfName = name of the obfuscated apk to create
    # @param mapName = name of the map file
    def obfuscate(self, filename, obfName, mapName):
        res = self.androidToolInterface.makeObfuscation(filename, obfName, mapName, self.obfuscatorPath)
        return res

    # This method test a package according to the rule set by the user
    # @param = name of the apk to test
    # @param folder = name of the folder for obfuscated file
    # @param packageName = name of the package contained in the apk
    def testPackage(self, filename, folder, packageName):
        if self.test == "run":
            res = self.InstallAndRun(filename, packageName)
        elif self.test == "none":
            res = 0
        elif self.test == "obfrun":
            obfName = folder + "/obf_" + packageName + ".apk"
            mapName = folder + "/map_" + packageName + ".txt"
            res = self.obfuscate(filename, obfName, mapName)
            if res == -1:
                self.logger.log("ERROR", "ERROR OBFUSCATING APK")
                return -1
            self.logger.log("INFO", "OBFUSCATION DONE")
            res = self.InstallAndRun(obfName, packageName)
        else:
            res = 0
        return res

    # This method clean a workspace from the previous results, mantaining the apk files
    def cleanResult(self):
        count = 0
        dir = os.listdir(self.workspacePath)
        for item in dir:
            if os.path.isdir(self.workspacePath + item):
                path = self.workspacePath + item + "/"
                apkDir = os.listdir(path)
                for csv_item in apkDir:
                    if os.path.isfile(path + csv_item) and ".csv" in csv_item:
                        os.remove(path + csv_item)
                        count += 1
        self.logger.log("INFO", "WORKSPACE CLEANED")
        self.logger.log("INFO", "DELETED {} FILES".format(count))


@click.command()
@click.option('--command', default="", required=1, help='prepare|clear')
@click.option('--datasetpath', default="", help='Path of Drebin Dataset Dictionary')
@click.option('--workspacepath', default="", required=1, help='Path of framework workspace')
@click.option('--emulator', default="", help='Emulator to use vbox|geny')
@click.option('--playerpath', default="", help='Path of genymotion player')
@click.option('--vmname', default="", help='Virtual Machine Name')
@click.option('--test', default="", help='Test Type: run,obf,obfrun,null')
@click.option('--obfuscatorpath', default="", help='Path to shield4j jar')
def main(command, datasetpath, workspacepath, emulator, playerpath, vmname, test, obfuscatorpath):
    workspacePreparator = WorkspacePreparator(datasetpath, workspacepath, emulator, playerpath, vmname, test,
                                              obfuscatorpath)
    if command == "prepare":
        workspacePreparator.prepareWorkspace()
    elif command == "clean":
        str = input("You are deleting all result, are you sure? type yes to continue\n")
        if str == "yes":
            workspacePreparator.cleanResult()


if __name__ == '__main__':
    main()
