#! /bin/bash

echo "Enter 3 names separated with spaces"
read inputnames
personnumber=1

for i in $inputnames
do
    echo "Person number ${personnumber}: ${i}"
    ((personnumber++))
done