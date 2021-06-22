#!/bin/bash

helpFunction()
{
   echo "Copy bitmap to remote location using scp"
   echo "Usage: $0 -p program [-d remote_dir] [-s source_file]"
   echo -e "\t-p Name of the Vivado project"
   echo -e "\t-d Destination directory"
   echo -e "\t-s Source file"
   exit 1 # Exit script after printing help
}


remote_dir="root@192.168.1.10:/fpga/bitmaps/"

# How to do shell script arguments like this:
# https://unix.stackexchange.com/a/505342

while getopts "d:s:p:" opt
do
   case "$opt" in
      d ) remote_dir="$OPTARG" ;;
      s ) source_file="$OPTARG" ;;
      p ) program="$OPTARG" ;;
      ? ) helpFunction ;; # Print helpFunction in case parameter is non-existent
   esac
done

if [ -z "$program" ]
then
   helpFunction
fi

# If no source file specified, use default
if [ -z "$source_file"]
then
    source_file="./projects/$program/$program.runs/impl_1/system_wrapper.bit"
fi

if [ ! -f "$source_file" ]
then
   echo "$source_file cannot be found"
   exit 2
fi


scp $source_file "$remote_dir${program}.bit"

if [ $? == 0 ]
then
    echo "$0: Succesfully copied $source_file to $remote_dir${program}.bit"
fi