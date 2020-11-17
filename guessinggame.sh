#!/usr/bin/env bash

function guessinggame(){
  real_solution=$(ls -a | grep "^\w" | wc -l)
  
  while true
  do
    echo "Type a guess how many files are in the current directory and then press Enter:"
    read guess

    if [[ $guess -eq $real_solution ]]
    then
      echo "Congratulations, you got it right!"
      break
    elif [[ $guess -gt $real_solution ]]
    then
      echo "Your guess is greater than the real solution. Please try again"
    else
      echo "Your guess is less than the real solution. Please try again"
    fi
  done
}

guessinggame
