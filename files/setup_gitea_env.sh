#!/bin/bash
adduser --system --shell /bin/bash --gecos 'Git Version Control' --group --disabled-password --home /home/git git
mkdir -p /var/lib/gitea/{custom,data,log}
chown -R git:git /var/lib/gitea/
chmod -R 750 /var/lib/gitea/
mkdir /etc/gitea
chown root:git /etc/gitea
chmod 770 /etc/gitea

# database setup
DB_USER=$1
DB_PASS=$2
DB_NAME=$3
mysql -uroot -e "CREATE DATABASE $DB_NAME CHARSET utf8mb4"
mysql -uroot -e "CREATE USER $DB_USER IDENTIFIED BY '$DB_PASS'"
mysql -uroot -e "GRANT ALL ON $DB_NAME.* TO $DB_USER@localhost"
