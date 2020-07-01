#!/bin/bash
#initializing empty array
declare -A birthDate
#using counter to store value based on index
janCount=0
febCount=0
marCount=0
aprCount=0
mayCount=0
junCount=0
julCount=0
augCount=0
sepCount=0
octCount=0
novCount=0
decCount=0
for ((i=0; i<50; i++))
do
   randomMonth=$((1+RANDOM%12))
   case $randomMonth in
   1)
      #at first jan count is 0 so it will store in 0th index
      #storing value in another array
      #if u like to see what is inside this array in each itration plz print and check it out
      janArray[$janCount]="person$i"
      #incrementing counter
      janCount=$(($janCount+1))
      #creating key as jan and storing the values in birthDate array
      birthDate["jan"]=${janArray[@]} ;;
   2)
      febArray[$febCount]="person$i"
      febCount=$(($febCount+1))
      birthDate["feb"]=${febArray[@]} ;;
   3)
      marArray[$marCount]="person$i"
      marCount=$(($marCount+1))
      birthDate["mar"]=${marArray[@]} ;;
   4)
      aprArray[$aprCount]="person$i"
      aprCount=$(($aprCount+1))
      birthDate["apr"]=${aprArray[@]} ;;
   5)
      mayArray[$mayCount]="person$i"
      mayCount=$(($mayCount+1))
      birthDate["may"]=${mayArray[@]} ;;
   6)
      junArray[$junCount]="person$i"
      junCount=$(($junCount+1))
      birthDate["jun"]=${junArray[@]} ;;
   7)
      julArray[$julCount]="person$i"
      julCount=$(($julCount+1))
      birthDate["jul"]=${julArray[@]} ;;
   8)
      augArray[$augCount]="person$i"
      augCount=$(($augCount+1))
      birthDate["aug"]=${augArray[@]} ;;
   9)
      sepArray[$sepCount]="person$i"
      sepCount=$(($sepCount+1))
      birthDate["sep"]=${sepArray[@]} ;;
   10)
      octArray[$octCount]="person$i"
      octCount=$(($octCount+1))
      birthDate["oct"]=${octArray[@]} ;;
   11)
      novArray[$novCount]="person$i"
      novCount=$(($novCount+1))
      birthDate["nov"]=${novArray[@]} ;;
   12)
      decArray[$decCount]="person$i"
      decCount=$(($decCount+1))
      birthDate["dec"]=${decArray[@]} ;;
   *)
      echo "Invalid Entry Please Check & Confirm"
   esac
done
#for displaying data
read -p "which month data do you need from 1-12 : " userMonth
case $userMonth in

#userMonth=$((1+RANDOM%12))
#case $userMonth in


1)
   echo "Persons whose BirthMonth is Jan: ${birthDate["jan"]}" ;;
2)
   echo "Persons whose BirthMonth is feb: ${birthDate["feb"]}" ;;
3)
   echo "Persons whose BirthMonth is mar: ${birthDate["mar"]}" ;;
4)
   echo "Persons whose BirthMonth is apr: ${birthDate["apr"]}" ;;
5)
   echo "Persons whose BirthMonth is may: ${birthDate["may"]}" ;;
6)
   echo "Persons whose BirthMonth is jun: ${birthDate["jun"]}" ;;
7)
   echo "Persons whose BirthMonth is jul: ${birthDate["jul"]}" ;;
8)
   echo "Persons whose BirthMonth is aug: ${birthDate["aug"]}" ;;
9)
   echo "Persons whose BirthMonth is sep: ${birthDate["sep"]}" ;;
10)
   echo "Persons whose BirthMonth is oct: ${birthDate["oct"]}" ;;
11)
   echo "Persons whose BirthMonth is nov: ${birthDate["nov"]}" ;;
12)
   echo "Persons whose BirthMonth is dec: ${birthDate["dec"]}" ;;
*)
   echo "you Entered Invalid Month number,it should be between 1-12"
#  echo ${birthDate["jan"]}
#  echo ${birthDate["feb"]}
#  echo ${birthDate["mar"]}
#  echo ${birthDate["apr"]}
#  echo ${birthDate["may"]}
#  echo ${birthDate["jun"]}
#  echo ${birthDate["jul"]}
#  echo ${birthDate["aug"]}
#  echo ${birthDate["sep"]}
#  echo ${birthDate["oct"]}
#  echo ${birthDate["nov"]}
#  echo ${birthDate["dec"]}

   ;;
esac
#one more way is there
#put the key in one array
#months=("jan" "feb" "mar" "apr" "may" "jun" "jul" "aug" "sep" "oct" "nov" "dec")
#for month in ${months[@]}
#do
    #displaing all the data
#    echo "$month : ${birthDate[$month]}"
#done
