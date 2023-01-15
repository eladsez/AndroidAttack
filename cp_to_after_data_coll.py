import os


def cut_to_dir(path: str):
    flag = False
    res = ''
    for char in path[::-1]:
        if flag:
            res += char
        elif char == '/':
            res += char
            flag = True
    return res[::-1]


# all_out_data = os.popen("find ./workspace | grep out_data").readlines()
# data_folders = []
# for i in all_out_data:
#     if "err" in i:
#         continue
#     folder = cut_to_dir(i)
#     data_folders.append(folder)
#
# for folder in data_folders:
#     os.popen(f"cp -r {folder} ./after_data_collection")

for dir in os.listdir("./after_data_collection"):
    apk_name = None
    for file in dir:
        if ".apk" in file:
            apk_name = file
            break




