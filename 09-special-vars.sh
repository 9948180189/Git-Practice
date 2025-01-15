#!/bin/bash
echo "All variables passed to the script: $*"
echo "Number of veriables passed: $#"
echo "Script name: $0"
echo "Current Working diarectory: $PWD"
echo "Home directory of current user: $HOME"
echo "PID of the script executing now: $$"
sleep 100 &
echo "PID of last background command: $!"

