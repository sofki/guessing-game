#!/usr/bin/env bash
# File: guessingame.sh

files=$(ls -1 | wc -l)

function guess {
	echo "How many files are in the working directory?"
	echo "Please enter your guess:"
	read input
}


while [[ $input -ne $files ]]
do
	guess
	if [[ $input -lt $files ]]
	then
		echo "Unfortunately this is too low"
	elif [[ $input -gt $files ]]
	then
		echo "Unfortunately that's too high"
	else
		echo "That is correct!"
	fi 
done

