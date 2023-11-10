#!/bin/bash
#Put this comment in
LOG_FILE="/var/log/update_script.log"

{
  date
  echo "Updating package lists..."
  sudo apt update

  echo "Upgrading packages..."
  sudo apt full-upgrade -y

  echo "Rebooting..."
  sudo reboot
} >> "$LOG_FILE" 2>&1
