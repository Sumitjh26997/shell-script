#!/bin/bash
date=$(date "+%d-%b_%Y-%H-%M-%S")
filename="file+$date"
touch /home/sumit/test/cron/$filename
echo "chaala" > $filename;
