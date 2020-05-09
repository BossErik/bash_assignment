all: guessinggame.sh
	echo "# My first Bash Project" > README.md
	echo "## This is my course assignment" >> README.md
	echo -n "- Number of lines in the bash script guessinggame.sh: " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	echo -n "- Make was running at: " >> README.md
	date >> README.md

clean:
	rm README.md

