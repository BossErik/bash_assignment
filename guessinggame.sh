#!/usr/bin/env bash

function get_number_files {
	local count=$(find -maxdepth 1 -type f | wc -l)
	echo $count
}
count=$(get_number_files)
echo -n "Welcome to the guessinggame please enter a number, which is equal to the number of files in your current directory: "
read input
	while true
	do
		if [[ $input -gt $count ]] 
		then
			echo "your guess was too high"
			echo -n "please try it again, enter another number: "
			read input
		elif [[ $input -eq $count ]]
		then
			echo "congrats you made it"
			break
		elif [[ $input -lt $count ]]
		then
			echo "your guess was too low"
			echo -n "please try it again, enter another number: "
			read input
		fi
	done
exit 0

