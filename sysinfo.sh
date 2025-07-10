#!/bin/sh

echo "System information:"
echo "----------------"
echo "Current user: $(whoami)"
echo "Machine name: $(hostname)"
echo "Operating system: $(uname -a)"
echo "CPU Cores: $(lscpu | grep "^CPU(s):" )"
echo "Available Memory: $(free -h | grep "Mem:" | awk '{print $2}')"
echo "----------------"