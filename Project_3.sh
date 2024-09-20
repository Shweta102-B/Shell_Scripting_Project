#!/bin/bash
#
DB_NAME="catalog"
DB_USER="myuser"
DB_PASS="password"
BACKUP_DIR="/home/ubuntu/backup/db"
DAYS=7

#create a backup directpry if it doesn't exit
mkdir -p $BACKUP_DIR

#Backup database
backup_file="$BACKUP_DIR/$DB_NAME-$(date +%F).sql"
mysqldump -u $DB_USER -p$DB_PASS $DB_NAME > $backup_file

#check if backup was successful
if [[ $? -eq 0 ]];
then
	echo "database backup successful: $backup_file"
else
	echo "database backup failed!"
	exit 1
fi

#Delete backup older than 7 days
find $BACKUP_DIR -type f -mtime +$DAYS -exec rm {} \;
