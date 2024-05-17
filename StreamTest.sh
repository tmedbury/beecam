#!/bin/bash

#Call from cron to see if stream is failed

# Checks to see if youtube live page is showing a stream offline message, if so, reboot

if curl -s https://youtu.be/FaXAWoL99KI | grep -i offline
then
  logger Stream appears offline - issuing reboot
  /sbin/shutdown -r now
#else
#  logger Stream Appears Up
fi
