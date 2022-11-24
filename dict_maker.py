import subprocess
import click
import os
from progressbar import *  # just a simple progress bar


def write_family(apk_list, family):
    family_out = ''

    widgets = [f'Writing sha for family {family}: ', Percentage(), ' ', Bar(marker='#', left='[', right=']'),
               ' ', ETA(), ' ']  # see docs for other options
    pbar = ProgressBar(widgets=widgets, maxval=len(apk_list)).start()
    index = 0

    for apk in apk_list:
        bash_array = ["sha256sum", apk]
        process = subprocess.Popen(bash_array, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        sha, error = process.communicate()
        if error or not sha:
            continue
        family_out += str(sha.decode().split()[0]) + ',' + family + '\n'

        index += 1
        pbar.update(index)
    pbar.finish()
    return family_out


@click.command()
@click.option('--benign_path', default="./apk_data/benign_apk/test/", help='')
@click.option('--drebin_path', default="./apk_data/drebin_apk", help='')
@click.option('--output_path', default="apk_dict.txt", help='')
def my_main(benign_path, drebin_path, output_path):
    cwd = os.getcwd()

    output_file = open(output_path, "a+")

    benign_apks = os.listdir(benign_path)
    os.chdir(benign_path)
    res = write_family(benign_apks, "benign")
    output_file.write(res)

    os.chdir(cwd)
    drebin_apks = os.listdir(drebin_path)
    os.chdir(drebin_path)
    res = write_family(drebin_apks, "drebin")
    output_file.write(res)

    output_file.close()


if __name__ == '__main__':
    my_main()