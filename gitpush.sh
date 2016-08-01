#!/bin/bash

git status

echo -en '\n\ncommit message : '
read msg

git add -A
git commit -m "$msg"

echo -en '\n\npush?(y/n) : '
read input

if [ $input == "y" -o $input == "Y" ]
then
	git push origin pages
else
	echo -e "\ndon't push."
fi
