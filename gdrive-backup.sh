#!/bin/bash

# set the download directory
download_dir="."

# set the Google Drive folder ID
folder_id="YOUR_FOLDER_ID"

# authenticate with gdrive
gdrive about

# download all files in the folder
gdrive download --recursive $folder_id

# zip the downloaded files
zip -r $download_dir/drive_data.zip .

# delete the downloaded files
rm -rf *

echo "Download complete!"


# WORK IN PROGRESS