#!/bin/bash
date=$(date "+%d-%b_%Y-%H-%M-%S")
filename="file+$date"
touch /home/$USER/$filename
echo "Hello Suckers" > /home/$USER/$filename;
