#!/bin/bash
# oss capstone
# Script 1: System Identity Report
# Author: Sudarsh Karan Chauhan | Roll: 24BCE10057 
# Software Choice: Git Version Control

# we are making use of cut to extract the name with tr to remove quotes
MY_NAME="Tejas Gaur" 
PROJECT_CHOICE="Git Version Control" # the software i have chosen for the project

DISTRO_NAME=$(grep '^PRETTY_NAME=' /etc/os-release | cut -d= -f2 | tr -d '"')
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR="$HOME"
UPTIME=$(uptime -p)
CURR_DATE=$(date)

# most linux systems use the linux kernel
LIC="This Linux system is based on the Linux kernel, which is licensed GNU GPL v2."

echo "#############################################"
echo "      $SOFTWARE Open Source Audit"
echo "#############################################"
echo "Student : $MY_NAME"
echo "Project : $PROJECT_CHOICE"
echo "#############################################"
echo "OS : $DISTRO_NAME"
echo "Kernel : $KERNEL"
echo "User : $USER_NAME"
echo "Home : $HOME_DIR"
echo "OS Uptime : $UPTIME"
echo "Latest Date/Time : $CURR_DATE"
echo "License Info : $LIC"
# echo "script ran successfully"
echo "#############################################"

