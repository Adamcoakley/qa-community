#! /bin/bash

# Write a script that takes a URL as user input and then returns whether that website exists.

echo "Enter a website URL:"
read website
curl -s ${website} > temp.txt
if [ -s temp.txt ]
then
    echo "The website exists"
else
    echo "The website does not exist"
fi
rm temp.txt