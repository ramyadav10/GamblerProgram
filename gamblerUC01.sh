#!/bin/bash

#Initialise the Stake amount for a Day
stake=100;
cash=$stake;

echo "We are going to play Gambling!-Luck is all yours"
echo "The rules are simple"
echo "You start with bet $ 1 : If WON: +$ 1 | LOSE: -$ 1 "
echo "What are you waiting for? Let's rumble"
echo "---------------------------------------------"
#Check the roll for the single bet
luckyRoll=$(( RANDOM % 2 ));
if [ $luckyRoll -lt 1 ]
then
cash=$(( $cash + 1 ));
echo "Congratualation...! You won the game"
else
cash=$(( $cash - 1 ));
echo "Sorry...! You loss the Game "
fi
echo "Total Cash Balance: "$cash

