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

if grep -Fxq "build now" rubyout.log
then
    # code if found
    echo "found"
else
    # code if not found
    echo "not found"
fi
cat rubyout.log
