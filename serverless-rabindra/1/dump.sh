#!/bin/bash

# Constants
USER="postgres"
DATABASE="hello"
BACKUP_DIRECTORY="/home/ec2-user/backup/dumpfiles"

# Date stamp
CURRENT_DATE=pgdump_$(date +"%m%d_%H%M_%s")

# Create the backup 
pg_dump -U $USER $DATABASE >> $BACKUP_DIRECTORY/$DATABASE\_$CURRENT_DATE.sql

# Upload to cloud
aws s3 cp $BACKUP_DIRECTORY/$DATABASE\_$CURRENT_DATE.sql s3://rabindra-db/_$CURRENT_DATE.sql --profile lft-training