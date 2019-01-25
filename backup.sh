#!/bin/bash

#Database Credentials
user="root"
password="12345"
host="localhost"
db_name="mcug"

#Other options
backup_path="/home/sumit/_backup/mysql"
date=$(date +"%d-%b_%Y")

#set default file permissions
#sudo unmask 177

#Dump database into sql file
mysql set --user=$user --password=$password --host=$host $db_name > $backup_path/$db_name-$date.sql

#delete files older than 15 days
find $backup_path/* -mtime +15 -exec rm {} \;
