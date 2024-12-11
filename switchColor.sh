#!/bin/bash

echo "select the folder color change, select the valid color:"
read color

# color Array
valid_color = ("green""blue""red""yellow""cyan")

echo "${valid_color[@]}"

# putting a state to check the condition whether the color is vaild from the input
match_found = false

#create a loop to iterate through the valid color array to do that use for loop
for valid_color in "${valid_color[@]}"; do
  if [ "$color" = "$valid_color" ]; then
    match_found = true
    break
  fi
done

#check the valid color and print the result
if [ "$match_found" = true ]; then
  echo "you have valid color, $color"
else
  echo "you have not entered the valid color"
fi

