#!/usr/bin/env bash

# Replace YOUR_USERNAME and YOUR_PASSWORD with your MySQL credentials


# Check if the database name was passed as an argument
if [ $# -eq 0 ]; then
  echo "Please provide the name of the database as an argument"
  exit 1
fi

DB_NAME=$1

# Use mysql to connect to the MySQL server and list the tables in the given database
mysql -u $USERNAME -p$PASSWORD -e "USE $DB_NAME; SHOW TABLES;"
