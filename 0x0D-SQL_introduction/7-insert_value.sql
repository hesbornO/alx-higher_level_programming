#!/usr/bin/env bash

# Replace YOUR_USERNAME and YOUR_PASSWORD with your MySQL credentials


# Check if the database name was passed as an argument
if [ $# -eq 0 ]; then
  echo "Please provide the name of the database as an argument"
  exit 1
fi

DB_NAME=$1

# Use mysql to insert a new row into the table
mysql -u $USERNAME -p$PASSWORD -e "USE $DB_NAME; INSERT INTO first_table (id, name) VALUES (89, 'Best School');"
