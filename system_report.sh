#!/bin/bash

REPORT="/home/ec2-user/learning/projects/sysht/report.txt"
DATE=$(date)

echo "--------------------" >> $REPORT
echo "System Health Report $DATE" >> $REPORT
echo "--------------------" >> $REPORT

echo "-----------CPU Usage-------------" >> $REPORT
top -bn1 | grep "Cpu(s)" >> $REPORT
echo ""

echo "-----------Memory Usage-----------" >> $REPORT
free -m >> $REPORT
echo ""

echo "-----------Disk usage-------------" >> $REPORT
df -h >> $REPORT
echo ""

echo "-----------Top Processes-----------" >> $REPORT
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6 >> $REPORT
