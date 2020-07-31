#!/bin/bash
#UC-04:-> Gambling after 20 days of playing every day would like to know the total amount won or lost.

#Initialising the Variables
stake=100
Bet=1
round=0
winPerDay=150
losePerDay=50
numOfDay=0
totalBalance=0
totalAmountWon=0
totalAmountLost=0

#Creating a loop to calculate for 30 days
while [ $numOfDay -lt 30 ]
do
numOfDay=$(( $numOfDay + 1 ))
cash=$stake

#Creating a loop for Gambling  with consideration of either 50% win or 50 % Loose
   while [ $cash -gt $losePerDay ] && [ $cash -lt $winPerDay ]
   do
   round=$(( $round + 1 ))
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

#Calcutating Total Amount Won and Lost
   if [ $cash == $winPerDay ]
      then
      totalBalance=$(( $totalBalance + $cash ))
      totalAmountWon=$(( $totalAmountWon + 50 ))
      else
      totalBalance=$(( $totalBalance + $cash ))
      totalAmountLost=$(( $totalAmountLost + 50 ))
   fi

   if [ $numOfDay -gt 20 ]
      then
      echo "Till Day $numOfDay :Amount Won- $totalAmountWon || AmountLost- $totalAmountLost "
   fi
done
echo "Total balance after 30 days: $totalBalance"

