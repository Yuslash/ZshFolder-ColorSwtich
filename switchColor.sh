#!/bin/bash

echo "select the folder color change, select the valid color:"

# color Array
valid_color=("green" "blue" "red" "yellow" "cyan")

echo -e "
  \e[33mAvailable Colors\e[0m

  \e[32m1. green\e[0m
  \e[34m2. blue\e[0m
  \e[31m3. red\e[0m
  \e[33m4. yellow\e[0m
  \e[36m5. cyan\e[0m
"

read -p $'\e[45mEnter a Color:\e[0m ' color

#declare an asscoiate array
declare -A color_map

color_map=(
  ["green"]="32"
  ["red"]="31"
  ["yellow"]="33"
  ["cyan"]="36"
  ["blue"]="34"
)

#lets put an simple condition now
if [ -n "${color_map[$color]}" ]; then
  export COLOR_CODE="${color_map[$color]}"
else
  export COLOR_CODE="invalid"
fi

#call getColorValue.sh
./getColorValue.sh
