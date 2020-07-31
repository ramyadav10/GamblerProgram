#!/bin/bash
#UC-02:-> Gambler make $1 bet so either win or loose $1

#Initialising Variables
Stake=100
Bet=1

#Gambling for checking  result
luckyRoll=$(( RANDOM % 2 ))
if [ $luckyRoll -eq 1 ]
then
echo "Congratulation...! You won the $Bet"
else
echo "Sorry...! You Lost $Bet"
fi
