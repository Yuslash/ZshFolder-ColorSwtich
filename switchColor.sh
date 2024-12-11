#!/bin/bash

echo "select the folder color change, select the valid color:"

# color Array
valid_color=("green" "blue" "red" "yellow" "cyan")

echo -e "
  AvailableColors

  \e[32m1. green\e[0m
  \e[34m2. blue\e[0m
  \e[31m3. red\e[0m
  \e[33m4. yellow\e[0m
  \e[36m5. cyan\e[0m
"

read color

#declare an asscoiate array
declare -A color_map

color_map=(
  ["green"]="32"
  ["red"]="31"
  ["yellow"]="33"
  ["cyan"]="36"
  ["blue"]="34"
)

# putting a state to check the condition whether the color is vaild from the input
match_found=false

#create a loop to iterate through the valid color array to do that use for loop
for valid_color in "${valid_color[@]}"; do
  if [ "$color" = "$valid_color" ]; then
    match_found=true
    break
  fi
done

#check the valid color and print the result
if [ "$match_found" = true ]; then
  echo "you have valid color, $color"
else
  echo "you have not entered the valid color"
fi
