all: README.md

README.md: guessinggame.sh
	echo '## This is created for the Peer-Reviewd Assignment of the "The Unix Workbench" course by John Hopnking University' > README.md
	echo '\n# offered on Coursera' >> README.md
	echo '* This *Make file* was ran at: $(shell date +%Y-%m-%d:%H:%M:%S)\n' >> README.md
	echo -n "\n**The number of lines in guessinggame.sh is:** " >> README.md
	grep -c '' guessinggame.sh >> README.md

clean:
	rm README.md

