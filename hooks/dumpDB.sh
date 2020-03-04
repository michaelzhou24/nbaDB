#!/bin/sh
mysqldump -u root -p$password $dbname --no-data=true> vc.sql
git add vc.sql
exit 0

