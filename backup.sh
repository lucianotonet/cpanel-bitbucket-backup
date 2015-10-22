# CONFIG Database
DB_NAME=''
DB_USER=''
DB_PASS=''

# MYSQL DUMP
mysqldump --skip-comments -u$DB_USER -p$DB_PASS $DB_NAME > $DB_NAME.sql

# GIT
/bin/sh -c 'cd $HOME && /usr/bin/git add --all'
/bin/sh -c 'cd $HOME && /usr/bin/git commit -m "Backup `date +%d%m%Y_%H%M`"'
/bin/sh -c 'cd $HOME && /usr/bin/git push origin master'

# REMOVE MYSQL DUMP
rm -rf $DB_NAME.sql