#!/bin/bash
# Author: Nikolai Lyssogor
# Date: 2/11/2019

# Problems 1/2:
echo "Enter a filename: "
read fileName
echo "Enter a regular expression: "
read regEx
grep $regEx $fileName

# Problem 3:
echo "Number of phone numbers: "
grep -E -c [0-9]{3}-[0-9]{3}-[0-9]{4} regex_practice.txt

# Problem 4:
echo "Number of email addresses: "
grep -c -E .*@.* regex_practice.txt
echo "List of 303 phone numbers: "
grep -o ^303-[0-9]{3}-[0-9]{4} regex_practice.txt
grep "@geocities.com" regex_practice.txt >> email_results.txt

# Problem 5:
git add email_results.txt

# Problem 6:
git commit -m email_results.txt "email_results.txt from lab3_script.sh" 
