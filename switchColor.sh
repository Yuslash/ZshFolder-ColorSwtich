#!/bin/bash

echo "select the folder color change, select the valid color:"

# color Array

echo -e "
  \e[33mAvailable Colors\e[0m

  \e[91m1. red\e[0m
  \e[92m2. green\e[0m
  \e[93m3. yellow\e[0m
  \e[94m4. blue\e[0m
  \e[95m5. pink\e[0m
  \e[96m6. cyan\e[0m
  \e[97m7. gray\e[0m
  \e[31m8. brightred\e[0m
  \e[32m9. brightgreen\e[0m
 \e[33m10. brightyellow\e[0m
"

read -p $'\e[45mEnter a Color:\e[0m ' color

#declare an asscoiate array
declare -A color_map

color_map=(
  ["red"]="91"
  ["green"]="92"
  ["yellow"]="93"
  ["blue"]="94"
  ["pink"]="95"
  ["cyan"]="96"
  ["gray"]="97"
  ["brightred"]="31"
  ["brightgreen"]="32"
  ["brightyellow"]="33"
)

#lets put an simple condition now
if [ -n "${color_map[$color]}" ]; then
  export COLOR_CODE="${color_map[$color]}"
else
  export COLOR_CODE="invalid"
fi

#call getColorValue.sh
./getColorValue.sh

# having issue in this executing part because to change the color there is a code down below
# export LS_COLORS="di=${RANDOM_COLOR}:fi=${RANDOM_COLOR}"
# Before we get into those issue we need to solve the two things
# -- first how we are gonna set argument on the .zshrc file and get the value from this file
# -- second is after give the input color then the .zshrc file should reload so this code should do source ~/.zshrc
# But the issue is we cannot do that maybe system protocol but you can perform the export argument function on shell
