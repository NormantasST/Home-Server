#!/bin/bash

# Prepare Variables
source .env

user_id=$USER_ID
fonts_dir=$FONTS_SOURCE
config_dir=$CONFIG_SOURCE
cache_dir=$CACHE_SOURCE
media_dir=$MEDIA_SOURCE

if [[ $EUID != 0 ]] then
  echo "Not Running in 'sudo'"
  exit 1
fi

# Generate Directories & Give ownership to user

generate_directory() {
  dir=$1

  echo "Generating Directory: $dir"
  mkdir -p $dir

  echo "Giving ownership to user: $user_id to dir: $dir"
  chown -R $user_id $dir
}

generate_directory $fonts_dir
generate_directory $config_dir
generate_directory $cache_dir
generate_directory $media_dir

echo "-------------------"
echo "Finished Preparation"
