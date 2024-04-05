#!/bin/bash

# Check if the script is being run with sudo
#if [ "$(id -u)" != "0" ]; then
#    echo "This script must be run with sudo"
#    exit 1
#fi

pow_sound="pow.ogg"
spin_sound="spin.ogg"
click_sound="click.ogg"

sound_dir="/usr/share/sounds/freedesktop/stereo"
bap_sound="${sound_dir}/service-logout.oga"

function play(){
    mpv "$@" &> /dev/null & disown
}


# Generate a random number from 1 to 6
random_number=$((1 + RANDOM % 6))

# Set the initial delay between clacks
delay=0.1

# Print the sound of rolling the cartridge with decreasing delay
for ((i=1; i<=random_number; i++)); do
    echo -n "Clack! "
    play $spin_sound    
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
    figlet "Bang!"
  fi


  for x in {1..1}; do
    play $pow_sound    
    sleep 0.1
  done

  # Destroy Computer
  # reboot
  for x in {1..9}; do
      clear
      play $bap_sound
      printf "\e[31m"
      figlet "ERROR"
      printf "\e[0m"
      sleep 0.2
      clear
      play $bap_sound
      figlet "ERROR!"
      sleep 0.2
  done

  cmatrix -C red

else
  play $click_sound    
  clear
  figlet "Click!"
fi

