#!/bin/bash

#The purpose of this bash script is copy all the files in a directory
# to a special folder called BACKUP_FILES in your home directory.

#Part 1: Check if the directory BACKUP_FILES exits

if [ -d "$HOME/BACKUP_FILES" ]
then
	echo "Directory $HOME/BACKUP_FILES does not exist"
else
	mkdir $HOME/BACKUP_FILES && echo "Created BACKUP_FILES in $HOME directory"
fi
 
if [ -d "$HOME/BACKUP_FILES" ]
then
	echo "Directory $HOME/BACKUP_FILES exist"
fi

#Part 2: Write a for loop that copies all the files of a directory into BACKUP_FILES

for fn in $HOME/*/*
do
	cp -R $fn $HOME/BACKUP_FILES/ && echo "$fn copied to $HOME/BACKUP_FILES"
done

#Part 3: Create a function called print_info that
#   (1) Uses the ls command to output all the file information (option -al)
#       in $HOME/BACKUP_FILES to the screen.
#   (2) Runs the disk usage command on the same file to report total
#       kilobytes of all the files in the directory



print_info () {
	ls -al ~/BACKUP_FILES
	du -sh ~/BACKUP_FILES
}
print_info
