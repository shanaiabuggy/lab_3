#!/bin/bash

# Authors : Shanaia Buggy & Edward Alder
# Date: 2/7/2020

#Problem 1 Code:
echo "Input a file name"
read filename
echo "Enter a regular expression"
read sp
#Make sure to document how you are solving each problem!

grep $sp $filename

#Output the number of phone numbers in the file. Use '-c' to print the count
#of the pattern. 
egrep -c [0-9]{3}[-][0-9]{3}[-][0-9]{4} $filename

#Output the number of phone numbers in the file. Count the number of '@'
# symbols, this will give you the # of phone #s
egrep -c [@] $filename

#Output a list of all the phone numbers in the "303" area code
#Using -o will print only the matching parts of the line 
egrep -o 303[-][0-9]{3}[-][0-9]{4} $filename

#Store a list of all emails from geocities.com in "email_results.txt"
#Using '>>' will append the output to email_results.txt
egrep [@]geocities.com $filename >> email_results.txt
