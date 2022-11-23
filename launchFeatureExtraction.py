# Copyright (C) 2017  Luca Massarelli
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# any later version.
import sys

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
sys.path.append('/home/elad/Desktop/AndroidAttack/ANDRODfa/')
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
import click
from classification.FeaturesExtractor import FeaturesExtractor
import warnings


@click.command()
@click.option('--dictionarypath', default="./drebin_apk", help='Path of Drebin Dataset Dictionary')
@click.option('--workspacepath', default="./workspace/", help='Path of framework workspace')
@click.option('--algorithm', default="dfa", help='Feature extraction algorithm: sampen,dfa')
@click.option('--filename', default="feature.txt", help='filename for saving feature.txt (optional)')
@click.option('--regex', default="\w*500out_data\d+.csv", help='regex for file name')
@click.option('--ncpus', default=1, help='number of cpus for parallel processing')
def mymain(dictionarypath, workspacepath, algorithm, filename, regex, ncpus):
    featuresExtractor = FeaturesExtractor(dictionarypath, workspacepath, algorithm, regex, ncpus)
    print(featuresExtractor.extractFeature())
    featuresExtractor.saveData(filename)


if __name__ == '__main__':
    warnings.filterwarnings("ignore")
    mymain()
