#!/bin/bash

server=10.10.103.100
user=elfmcblue
pass=tryhackme!

sshpass -p $pass ssh $user@$server 'grep THM SSHD.log' | cat >> flag.txt