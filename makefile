#!/usr/bin/env bash

all: README.md

README.md: guessinggame.sh
	echo "Title: Guessing Game" > README.md
	echo $$(date "+%m/%d/%Y %H:%M:%S") >> README.md
	wc -l guessinggame.sh | egrep -o "\d+" >> README.md

clean:
	rm README.md
