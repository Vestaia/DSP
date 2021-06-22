#!/bin/bash

# How to do shell script arguments like this:
# https://unix.stackexchange.com/a/505342

ip="192.168.4.136"
login="root"
password="changeme"

# Which program folder to search in locally
program="$1"

# where to put the bitmap
remote_dir="/fpga/bitmaps"

# where to find the bitmap
source_file="./projects/$program/$program.runs/impl_1/system_wrapper.bit"

helpFunction()
{
   echo ""
   echo "Usage: $0 programName -i ipAddress -l login -p password -r remote_dir -s source_file"
   echo -e "\t programName The name of the program whose bitmap to upload to remote_dir/programName.bit"
   echo -e "\t-i IP address of the red-pitaya"
   echo -e "\t-l Account to log in with"
   echo -e "\t-p Password for the account"
   echo -e "\t-r Specify remote dir to put bitmap"
   echo -e "\t-s Specify bitmap source file"
   exit 1 # Exit script after printing help
}

while getopts "i:l:p:" opt
do
   case "$opt" in
      i ) ip="$OPTARG" ;;
      l ) login="$OPTARG" ;;
      p ) password="$OPTARG" ;;
      ? ) helpFunction ;; # Print helpFunction in case parameter is non-existent
   esac
done

# Print helpFunction in case required parameters are empty
if [ -z "$program" ]
then
   echo "Some or all of the parameters are empty";
   helpFunction
fi

# If we cannot find the source file then stop running
if [ ! -f "$source_file" ]
then
   echo "$source_file cannot be found"
   exit 2
fi

# Begin script in case all parameters are correct

echo "$0: Transfer starting"

lftp sftp://"$login":"$password"@"$ip" -e "cd $remote_dir; put $source_file; rm $remote_dir/program.bit; mv $remote_dir/system_wrapper.bit $remote_dir/program.bit; bye"

echo "$0: Transfer finished"
