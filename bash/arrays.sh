#! /bin/bash

declare -a names=("Alice" "Bob" "Luke" "Dylan")
counter=1

for i in "${names[@]}"
do
    echo "Person ${counter}: ${i}"
    ((counter++))
done