#!/bin/bash
#UC-06:-> Gambler wants to know his/her luckiest day where he/she won maximum and unluckiest day where he/she lost maximum

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
maxWinPercentage=0
maxLossPercentage=0
dayMaxWin=0
dayMaxLoss=0

#Creating a loop to calculate for 30 days
while [ $numOfDay -lt 30 ]
do
numOfDay=$(( $numOfDay + 1 ))
cash=$stake
numOfWin=0
numOfLoss=0
totalNumOfGambled=0

#Creating a loop for Gambling  with consideration of either 50% win or 50 % Loose
   while [ $cash -gt $losePerDay ] && [ $cash -lt $winPerDay ]
   do
      round=$(( $round + 1 ))
      luckyRoll=$(( RANDOM % 2 ))
      if [ $luckyRoll -eq 1 ]
         then
         cash=$(( $cash+$Bet ))
         numOfWin=$(( $numOfWin + 1 ))
         else
         cash=$(( $cash-$Bet ))
         numOfLoss=$(( $numOfLoss + 1 ))
      fi
   done
   totalNumOfGambled=$(( $numOfWin + $numOfLoss ))

   percentageWin=$(( 100 * $numOfWin/$totalNumOfGambled ))
   percentageLoss=$(( 100 * $numOfLoss/$totalNumOfGambled ))

#Calculating the Win and Lose percentage
   if [ $maxWinPercentage -lt $percentageWin ]
   then
      maxWinPercentage=$percentageWin
      dayMaxWin=$numOfDay
   fi

   if [ $maxLossPercentage -lt $percentageLoss ]
   then
      maxLossPercentage=$percentageLoss
      dayMaxLoss=$numOfDay
   fi


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

echo "Days History: Number of Days WON: $numOfDaysWon and Number of Days Lost: $numOfDaysLost in month"
echo "Total Balance at end of Month : $totalBalance"
echo "Maximum Won on $dayMaxWin th Day"
echo "Maximum Loss on $dayMaxLoss th Day"
