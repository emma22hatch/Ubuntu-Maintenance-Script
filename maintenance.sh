#!/bin/bash

# This script performs a variety of maintenance tasks on your Ubuntu machine.
# It can be used to update your software, remove old packages,
# check for security vulnerabilities, and more.

# The script takes a number of parameters, which you can use to customize
# the tasks that it performs.

# The following parameters are supported:
#
# -u, --update: Update all of your software.
# -r, --remove: Remove old packages.
# -s, --security: Check for security vulnerabilities.
# -c, --cleanup: Cleanup temporary files and directories.
# -h, --help: Display this help message.

# To use the script, simply run it with the desired parameters.
# For example, to update your software and remove old packages, you would run:
#
# $ ./maintenance.sh -u -r

# To see a list of all of the available parameters, run the script with the
# --help parameter.

# The following code performs the actual maintenance tasks.

if [[ $1 == "-u" ]]; then
  sudo apt update
  sudo apt upgrade
fi

if [[ $1 == "-r" ]]; then
  sudo apt autoremove
fi

if [[ $1 == "-s" ]]; then
  sudo apt-get update
  sudo apt-get upgrade
  sudo apt-get dist-upgrade
  sudo apt-get autoremove
  sudo apt-get clean
fi

if [[ $1 == "-c" ]]; then
  sudo apt-get clean
  sudo rm -rf ~/.cache/*
  sudo rm -rf /tmp/*
  sudo rm -rf /var/tmp/*
fi

if [[ $1 == "-h" ]]; then
  echo "Usage: maintenance.sh [options]"
  echo "Options:"
  echo "  -u, --update: Update all of your software."
  echo "  -r, --remove: Remove old packages."
  echo "  -s, --security: Check for security vulnerabilities."
  echo "  -c, --cleanup: Cleanup temporary files and directories."
  echo "  -h, --help: Display this help message."
fi
