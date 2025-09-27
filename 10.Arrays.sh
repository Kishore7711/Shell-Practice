#!/bin/bash

##########  list of name is stored in one array ###########

#### size = 4, Max Index = 3

Names=( "Anil" "Sunil" "Kiran" "Ravi" )

echo "first name is : ${Names[0]}"

Leaders=( "modi" "rahul" "yogi" "mamta" )

echo "All Leaders are : ${Leaders[@]}"
echo "first Leader is : ${Leaders[0]}"
echo "Last Leader is :${Leaders[10]}"  ### out of bound index



