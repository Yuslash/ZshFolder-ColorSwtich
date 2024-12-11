#!/bin/bash

#print the code argument you got from the first switchScript
if [ "$COLOR_CODE" = "invalid" ]; then
  echo -e "\e[31mInvalid Color Input\e[0m"
else
  echo -e "\e[${COLOR_CODE}m the color code is: $COLOR_CODE\e[0m"
fi
