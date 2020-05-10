#!/usr/bin/env bash

function get_number_files {
	local count=$(find -maxdepth 1 -type f | wc -l)
	echo $count
}
count=$(get_number_files)
echo "Welcome to the guessinggame"
	while true
	do
		echo -n "Please enter a number: "
		read input
		if [[ $input =~ ^[0-9]+$ ]]
		then
			if [[ $input -gt $count ]]
			then
				echo "your guess was too high"
			elif [[ $input -eq $count ]]
			then
				echo "congrats you made it"
				break
			elif [[ $input -lt $count ]]
			then
				echo "your guess was too low"
			fi
		fi
	done
exit 0
