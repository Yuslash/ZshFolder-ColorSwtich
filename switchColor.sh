#!/bin/bash

echo "select the folder color change:"
read color

if [ "$color" = "green" ]; then
  echo "97"
else
  echo "That is not Color Mate"
fi
