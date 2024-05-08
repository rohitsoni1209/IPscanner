#!/bin/bash

echo "Enter the starting IP address :"
read StartIP

echo "Enter the last IP address, telnet :"
read LastIP

echo "Enter the port you want to search for :"
read port

nmap -sT $StartIP/$LastIP -p $port > /dev/null -oG MyMSSQLscan

cat MyMSSQLscan | grep open > MyMSSQLscan2

cat MyMSSQLscan2

