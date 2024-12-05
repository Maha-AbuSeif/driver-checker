#!/bin/bash

   arg=$1
   res=eligible
   res1=not-eligible

   case $arg in 
    new) 
     read -p " enter your name is: " name 
     read -p " enetr your age is: " age 
     read -p " enter your vision_rate is: " vision_rate
	  if [ $age -gt 18 ]  &&  [ $vision_rate -gt 4 ] 
	    then 
	       echo $res
		   echo " ($name:$age:$vision_rate:$res) " >> file.log 
	    else 
	       echo $res1
		   echo " ($name:$age:$vision_rate:$res1) " >> file.log 
	  fi 
	   ;;
	
    get)
        read -p " enter the name of the user you want to see their result: " name
        grep $name -i file.log | cut -d: -f1,4
    ;;
	
    list)
        cut -d: -f1,4  file.log
	;; 
    *)  echo "wrong input" ;;   
   esac 
