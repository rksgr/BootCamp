#!/bin/bash

read -p "Enter the number whose harmonic mean is to be found out:" n

echo TEST $n 
harmonic_mean=0
for((i=1;i<$n;i++))
do
 recip=`echo $i | awk '{print 1/$1}'`
 harmonic_mean=`echo $harmonic_mean $recip | awk '{print $1+$2}'`
 echo $harmonic_mean
done
echo Final harmonic num $harmonic_mean 

