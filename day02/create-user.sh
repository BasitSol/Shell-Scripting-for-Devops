#!/bin/bash

#This is for the creating user use case

read -p "Enter username" username

echo "You Entered $username"

sudo useradd -m $username

echo "New User added"

