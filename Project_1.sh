#!/bin/bash

###########################
#Author: Shweta Bhowate

#Date:-18-09-2024

#########################

#create a new directory if not exits
mkdir users_login_date 

#Get Date in a variable
DATE=$(date +'%m-%d-%Y-%H-%M')

#log the users Data in a file
who | awk '{print $1,$3,$4,$5}' > users_login_date/Users_$DATE.txt


