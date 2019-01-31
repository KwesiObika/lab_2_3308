#!/bin/bash
# Authors: Ahoto Obika
# Date: 1/30/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!

regExp=$1
fileName=$2

#Count the Number of phone numbers in regex_practice.txt
grep -c -E "^[0-9]{3}-[0-9]{3}-[0-9]{4}$" regex_practice.txt

#Count the number of emails in regex_practice.txt
grep -c "@" regex_practice.txt
#List all phone numbers in the "303" area code and store in "phone_results.txt"
grep -E "^303-[0-9]{3}-[0-9]{4}$" regex_practice.txt > phone_results.txt
#List all the emails from geocities.com and put results in "email_results.txt"
grep "@geocities.com$" regex_practice.txt > email_results.txt
#List all the lines that match command line regX a put in "command_results.txt"
grep $1 $2 > command_results.txt
