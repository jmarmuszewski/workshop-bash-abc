#!/bin/bash

echo "Directory name:"
pwd

echo "Files in directory:"
ls
echo
ls -la
echo
ls -ls

echo "File content:"
cat passwd

echo "Number of lines:"
cat passwd | wc -l 

echo "Files head:"
head -n 4 passwd

echo "Find line:"
cat passwd | grep 'marmur'

echo "Count lines:"
cat passwd | grep '/bin/bash' | wc -l

echo "Find line in multiple files:"
grep -r 'marmur' *

echo 'Extract usernames:'
cat passwd | cut -f1 -d':'

echo 'Disable login:'
cat passwd | sed -e 's#/bin/bash#/bin/false#g'
