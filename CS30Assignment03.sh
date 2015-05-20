#!/bin/bash

echo ""
echo ""
let remindersNum=0
read -p "How many reminders would you like to enter? 
Type 0 to quit" remindersNum

if [ $remindersNum -eq 0 ]; then
   exit

elif [ $remindersNum -lt 11 ]; then
   let i=0
   while [ $i -lt $remindersNum ]
   do
      echo please enter a date
      read agendaDate
      echo please enter a description of the event
      read agendaDescription
      echo -e $agendaDate ' \t ' $agendaDescription >> agenda
      let i=$i+1
   done

else
   echo please enter an integer less than 11 
   ./$0

fi 2>/dev/null

