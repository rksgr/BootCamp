#!/bin/bash


declare -A die_roll

die_roll[1]=0
die_roll[2]=0
die_roll[3]=0
die_roll[4]=0
die_roll[5]=0
die_roll[6]=0

i=o
while [[ ${die_roll[1]} -lt 10 && ${die_roll[2]} -lt 10 && ${die_roll[3]} -lt 10 && ${die_roll[4]} -lt 10 && ${die_roll[5]} -lt 10 && ${die_roll[6]} -lt 10 ]]
do
 dice_val=$((RANDOM%6+1))
 die_roll_pres=${die_roll[$dice_val]}
 die_roll[$dice_val]=$((die_roll_pres+1))
 echo "|" $i
 echo ${!die_roll[@]}
 echo ${die_roll[@]}
 ((i++))


done
