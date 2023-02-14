#!/usr/bin/env bash

# Replace YOUR_USERNAME and YOUR_PASSWORD with your MySQL credentials


# Check if the database name was passed as an argument
if [ $# -eq 0 ]; then
  echo "Please provide the name of the database as an argument"
  exit 1
fi

DB_NAME=$1

# Use mysql to connect to the MySQL server and print the table description
mysql -u $USERNAME -p$PASSWORD -e "USE $DB_NAME; SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH, IS_NULLABLE FROM information_schema.COLUMNS WHERE TABLE_NAME = 'first_table';"
