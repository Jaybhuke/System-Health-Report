#!/bin/bash

REPORT="/home/ec2-user/learning/projects/sysht/report.txt"
DATE=$(date)


echo "System Health Report $DATE" >> $REPORT
echo "--------------------" >> $REPORT

echo "CPU Usage" >> $REPORT
top -bn1 | grep "Cpu(s)" >> $REPORT
