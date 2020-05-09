#!/usr/bin/env bash

function get_number_files {
	local count=$(find -maxdepth 1 -type f | wc -l)
	echo $count
}
count=$(get_number_files)
echo "Welcome to the guessinggame please enter a number, which is equal to the number of files in your current directory"
read input
abbruch=0
	while [[ $abbruch -eq 0 ]]
	do
		if [[ $input -gt $count ]] 
		then
			echo "your guess was too high"
			echo "please try it again, enter another number"
			read input
		elif [[ $input -eq $count ]]
		then
			echo "congrats you made it"
			let abbruch=$abbruch+1
		elif [[ $input -lt $count ]]
		then
			echo "your guess was too low"
			echo "please try it again, enter another number"
			read input
		fi
	done


