#!/bin/bash
#UC-03:-> Gambler win or loose 50% of the stake, would resign for the day

#Initialising the Variables
stake=100
Bet=1
winPerDay=150
losePerDay=50

#Creating a loop for Gambling  with consideration of either 50% win or 50 % Loose
while [ $stake -gt $losePerDay ] && [ $stake -lt $winPerDay ]
do
   luckyRoll=$(( RANDOM % 2 ))
   if [ $luckyRoll -eq 1 ]
   	then
   	echo "Congratulation...! You won the $Bet"
   	stake=$(( $stake+$Bet ))
   	else
   	echo "Sorry...! You Lost $Bet"
   	stake=$(( $stake-$Bet ))
   fi
done
echo "Balance for the day: $stake"
