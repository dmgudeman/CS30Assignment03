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
   while [ $i -lt $remindersNum ]; do
    echo please enter a date, first:
    while [[ ! ${get_month} =~ ^[0-9]+$ ]]; do
        echo ""
        echo "enter a number for the MONTH (1-12):"
        read get_month
        ! [[ ${get_month} -ge 1 && ${get_month} -le 12  ]] && unset get_month
    done
    
    while [[ ! ${get_day} =~ ^[0-9]+$ ]]; do                                   
          echo "enter a number for the DAY (1-31):"                    
          read get_day
           ! [[ ${get_day} -ge 1 && ${get_day} -le 31  ]] && unset get_day    
      done  

      echo please enter a description of the event
      read agendaDescription
      echo -e $get_month/$get_day ' \t ' $agendaDescription >> ./agenda
      let i=$i+1
   done

else
   echo please enter an integer less than 11 
   ./$0

fi 2>/dev/null

