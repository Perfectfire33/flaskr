import os
import json

def get_dirs():
    folders = []
    for folder in os.listdir(r'C:\Users\Public\EBAY\EBAY_PICTURES\pictures'):
        folders.append(folder)

    return folders

#folders = get_dirs()
#print("folders")
#print(folders)


def get_path():
    folders = get_dirs()
    folder_list = []
    picture_dir = r'C:\Users\Public\EBAY\EBAY_PICTURES\pictures'
    #img_dict = {}
    for current_folder in folders:
        #print("picture_dir current_folder")
        #print(picture_dir + "\\" + current_folder)
        #print(len(os.listdir(picture_dir + "\\" + current_folder)))
        img_array = []
        img_dict = {}
        for img in os.listdir(picture_dir + "\\" + current_folder):
            if img != 'Thumbs.db':
                img_array.append(img)
        img_dict['folder_name']=current_folder
        img_dict['folder_data']=img_array
        folder_list.append(img_dict)

    return folder_list

#folder_list = get_path()
#print("folder_list")
#print(folder_list)

def create_url():
    img_dict = get_path()
    img_dict_dump = json.dumps(img_dict)
    img_dict_json = json.loads(img_dict_dump)
    i = 0
    base_url = r'127.0.0.1:5000/pictures/'
    #print("len(img_dict_json)")
    #print(len(img_dict_json))
    #print(img_dict_json)
    picture_url_list = []
    while i < len(img_dict_json):
        j = 0
        folder_url = img_dict_json[i]['folder_name']
        #print("folder_url")
        #print(folder_url)
        while j < len(img_dict_json[i]['folder_data']):
            folder_data = img_dict_json[i]['folder_data'][j]
            #print("folder_data")
            #print(folder_data)
            folder_data_url = "/" + folder_data
            print("complete_url")
            print(base_url + folder_url + folder_data_url)
            complete_url = base_url + folder_url + folder_data_url
            picture_url_list.append(complete_url)
            j = j + 1
        i = i + 1

    return picture_url_list


create_url = create_url()
print("create_url")
print(create_url)