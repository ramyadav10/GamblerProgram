#!/bin/bash

#UC-05:-> Gambling for Each month would like to know the days won and lost and by how much.

#Initialising the varible
stake=100
Bet=1
winPerDay=150
losePerDay=50
numOfDay=0
totalBalance=0
totalAmountWon=0
totalAmountLost=0
numOfDaysWon=0
numOfDaysLost=0

#Creating a loop to calculate for 30 days
while [ $numOfDay -lt 30 ]
do
numOfDay=$(( $numOfDay + 1 ))
cash=$stake

#Creating a loop for Gambling  with consideration of either 50% win or 50 % Loose
   while [ $cash -gt $losePerDay ] && [ $cash -lt $winPerDay ]
   do
      luckyRoll=$(( RANDOM % 2 ))
      if [ $luckyRoll -eq 1 ]
         then
         #echo "Congratulation...! You won the $Bet"
         cash=$(( $cash+$Bet ))
         else
         #echo "Sorry...! You Lost $Bet"
         cash=$(( $cash-$Bet ))
      fi
   done

   if [ $cash == $winPerDay ]
      then
      numOfDaysWon=$(( $numOfDaysWon + 1 ))
      totalBalance=$(( $totalBalance + $cash ))
      totalAmountWon=$(( $totalAmountWon + 50 ))
      else
      numOfDaysLost=$(( $numOfDaysLost + 1 ))
      totalBalance=$(( $totalBalance + $cash ))
      totalAmountLost=$(( $totalAmountLost + 50 ))
   fi

#Calculating the Amount won or loose after 20 days
   if [ $numOfDay -gt 20 ]
      then
      echo "Till Day $numOfDay :Amount Won- $totalAmountWon || AmountLost- $totalAmountLost"
   fi
done

echo "Day History: Number of Days WON: $numOfDaysWon and Number of Days Lost: $numOfDaysLost in month"
echo "Total Balance: $totalBalance"

