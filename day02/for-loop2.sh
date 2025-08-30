#!/bin/bash

<< task
$1 is argument 1 which is the folder name 
$2 is start range
$3 is end range
task

for (( num=$2; num<=$3; num++))
do 
	mkdir "$1$num"
done

<< Instructions
If you want to run this script you have to give the arguments while running the script 
you have to give the folder name which is the first argument and then second argument to start
and then last where you want it to stop
Instructions

