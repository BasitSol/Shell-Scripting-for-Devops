#!/bin/bash

# This is to backup the server or the directory

<< readme
This is a script for the backup with the 5 day rotation

Usage : 
./backup.sh <path to your source> <path to backup folder>

$? => means the very previous command
readme

function display_usage(){

	echo "Usage: ./backup.sh <path to your source> <path to backup folder>"

}

if [ $# -eq 0 ]; then 
	display_usage

fi

source_dir=$1
timestamp=$( date '+%Y-%M-%d-%H-%M-%S')
backup_dir=$2

function create_backup(){
	
	zip -r "${backup_dir}/backup_${timestamp}.zip" "${source_dir}" > div/null
        if [ $? -eq 0 ]; then
	       echo"backup generated successfully for ${timestamp}"
	fi
}

function perform_rotation(){

	backups=($(ls -t "${backup_dir}/backup_"*.zip 2>/dev/null"))

	if [ "${#backups[@]}" -gt 5 ]; then
		echo "Performing rotation for days"

		backups_to_remove=("${backups[@]:5}")

		for backup in "${backups_to_remove[@]}";
		do
			rm -f ${backup}
	fi
}

create_backup
perform_rotation

