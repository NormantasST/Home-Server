#!/bin/bash

# Prepare Variables
source .env

if [[ $EUID != 0 ]] then
  echo "Not Running in 'sudo'"
  exit 1
fi

# Generate Directories & Give ownership to user

generate_directory() {
  dir=$1

  if [[ -z $dir ]]; then
    echo "Directory not defined or empty"
    return;
  fi

  echo "Upserting Directory: $dir"
  mkdir -p $dir

  echo "Giving ownership to user: $USER_ID to dir: $dir"
  chown -R $USER_ID $dir
}

generate_directory $SEARXNG_CORE_ETC
generate_directory $SEARXNG_CORE_CACHE
generate_directory $SEARXNG_VALKEY_DATA

echo "-------------------"
echo "Finished Preparation"
