#!/bin/bash


#This is the function definition 
function is_loyal(){

read -p "$1 looked at her :" bandi
read -p "$1 love %" pyaar

if [[ $bandi == "Ayesha" ]];
then 
	echo "$1 is damn loyal"

elif [[ $pyaar -ge 100 ]];
then 
	echo "$1 is a loyal person"
else
	echo "$1 is not loyal"
fi
}

#This is the function call 

is_loyal "Tom"

