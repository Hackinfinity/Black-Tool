#!/usr/bin/env bash
# This code write by Mr.Nope
# Mr.Nope = Mr.Programmer2938
# Black-Tool Installing File
# Version 3.0.0
if [[ "$(id -u)" -ne 0 ]]; then
  echo "Please, Run This Programm as Root!"
  exit 1
fi 
function ext() {
  clear
  echo "Exiting..."
  exit 1
}
try1() {
  printf '\033]2;Black-Tool-Installing/color\a'
  clear
  echo "" 
echo " █▄▄ █░░ ▄▀█ █▀▀ █▄▀ ▄▄ ▀█▀ █▀█ █▀█ █░░ v3.0.0"
echo " █▄█ █▄▄ █▀█ █▄▄ █░█ ░░ ░█░ █▄█ █▄█ █▄▄"
echo ""
  echo "color:
     {1}.red
     {2}.green
     {3}.blue
     {4}.None
     {99}.Exit
     "
  printf 'Enter color: '
  read color;
  if [[ "$color" == "1" ]]; then
      cd color/red/ && chmod a+x hack
      cp hack /usr/bin
      cp hack /usr/local/bin
  elif [[ "$color" == "2" ]]; then
      cd color/green/ && chmod a+x hack
      cp hack /usr/bin
      cp hack /usr/local/bin
  elif [[ "$color" == "3" ]]; then
      cd color/blue/ && chmod a+x hack
      cp hack /usr/bin
      cp hack /usr/local/bin
  elif [[ "$color" == "4" ]]; then
      chmod +x hack
      cp hack /usr/local/bin
      cp hack /usr/bin
  elif [[ "$color" == "99" ]]; then
      ext
  else
      try1
  fi
}
run() {
    clear
    printf '\033]2;Starting\a'
    echo "Starting..."
    sleep 2
    chmod +x hack
    chmod +x uninstall.sh
    try1
    printf '\033]2;Installing...\a'
    echo "Installing..."
    sleep 2
    apt-get update
    apt-get upgrade
    apt install alsa-utils
    apt install xtitle
    apt install lolcat
    apt install python
    apt install python3
    printf "Press any key To continue..."
    read -n 1
    echo ""
    echo "Finish...!

Usage:
       hack --help
       
Help Argument:
             Black-Tool Usage:
                  --start   | start Hack Menu!
                  --install   <Pkg Name>
                  --clone     <Repositories Link>
                  --version | Black-Tool version
                  --help    | Black-Tool Help
                  --banner  | Show Black-Tool Banner

                  "
    exit 1
}
check() {
      printf '\033]2;Black-Tool/Installing/Check-Internet\a'
      clear
      echo "Checking Internet..."
      sleep 1
      ping -w 1 google.com > /dev/null
      if [[ "$?" != 0 ]]; then
         clear
         echo "
Please, Check Internet!
"
         exit 1
      else
          clear
          echo "Internet Connected!"
          sleep 2
          run
      fi
}
check
