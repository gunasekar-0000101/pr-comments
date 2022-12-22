#!/bin/bash

#declare file="rubyout.log"
#declare regex="\s+build now\s+"

#declare file_content=$( cat "${file}" )
#if [[ " $file_content " =~ $regex ]] # please note the space before and after the file content
 #   then
  #      echo "found"
   # else
    #    echo "not found"
#fi

#exit

if grep -Fxq "2022-12-22 build now is present in the comment" rubyout.log
then
    # code if found
    echo "found"
else
    # code if not found
    echo "not found"
fi
#cat rubyout.log
