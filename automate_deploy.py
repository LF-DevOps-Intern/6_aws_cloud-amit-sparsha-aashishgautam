#!/usr/bin/python3.8
import os
import datetime
import time
FILE_SUFFIX_DATE_FORMAT = "%Y-%m-%d-%H-%M"
backup_filename = datetime.datetime.now().strftime(
    FILE_SUFFIX_DATE_FORMAT) + "_backup_leapfrog"
user = os.environ.get('USER')
cmd = "pg_dump -U {0}  -F c leapfrog_intern > /home/durbs/task/{1}.tar".format(user,backup_filename)
os.system(cmd)
cmd_s3 = "/usr/local/bin/aws s3 cp /home/durbs/task/{0}.tar s3://intern-manip --profile lft-training-manip".format(backup_filename)
os.system(cmd_s3)
