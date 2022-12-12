#! /bin/bash

# a file to make use of a basic array
# a for loop is used to print the array's contents

echo "Enter 3 names separated with spaces"
read inputnames
personnumber=1

for i in $inputnames
do
    echo "Person number ${personnumber}: ${i}"
    ((personnumber++))
done