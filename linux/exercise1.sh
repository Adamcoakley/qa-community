#! /bin/bash

# Write a script that accepts a username as an input and returns if that username is logged in or not.

echo "Hello, what is your user name?"
read username
currentuser="$(whoami)"
if [ $username == $currentuser ]; then
        echo "You are the current logged in user"
else
        echo "You are not logged in"
fi