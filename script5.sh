#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "##### Generate Your Personalized Open Source Manifesto ######"
echo

# Interactive user input
read -p "1. What does an open source software mean to you? " TOOL
read -p "2. What does 'freedom' mean to you? " FREEDOM
read -p "3. Do you have plans for software which you would like to build and share? " BUILD

CURRENT_DATE=$(date +'%d %B %Y')
FILE_NAME="manifesto_$(whoami).txt"

# Creating the manifesto file using redirection
echo "THE OPEN SOURCE MANIFESTO" > "$FILE_NAME"
echo "Created by: $(whoami) on $CURRENT_DATE" >> "$FILE_NAME"
echo "#######################################" >> "$FILE_NAME"
echo "While others build commercial tools, I choose to build bridges through open source softwares that powers the world's infrastructure." >> "$FILE_NAME"
echo "Open source software such as $TOOL empowers my creativity and helps me turn my ideas into reality." >> "$FILE_NAME"
echo "To me, software freedom is defined by $FREEDOM." >> "$FILE_NAME"
echo "I am planning to build $BUILD to contribute to the community and help others grow." >> "$FILE_NAME"

echo
echo "Manifesto successfully saved to $FILE_NAME"
echo "#########################################"
cat "$FILE_NAME"
