#!/bin/bash

#simple script to turn FR24 services off

if [ "$(whoami)" != "root" ];
  then echo "You need to run this script as root"

  else
      echo "Stopping FR24Feed Service"
      systemctl stop fr24feed
      sleep 1
      echo "OK"
      echo "==============================="
      echo "Disabling FR24Feed service"
      systemctl disable fr24feed
      sleep 1
      echo "ok"

      sleep 1
      echo "Looking for FR24Feed processes in the operating system. If found, killing:"
      killall fr24feed
      killall fr24feed-status
      sleep 1
      echo "Done. Fr24Feed service has been succesfully stopped and disabled. "

fi
