#!/usr/bin/env bash

# Replace YOUR_USERNAME and YOUR_PASSWORD with your MySQL credentials
USERNAME="YOUR_USERNAME"
PASSWORD="YOUR_PASSWORD"

# Check if the database name was passed as an argument
if [ $# -eq 0 ]; then
  echo "Please provide the name of the database as an argument"
  exit 1
fi

DB_NAME=$1

# Use mysql to connect to the MySQL server and create the table if it doesn't already exist
mysql -u $USERNAME -p$PASSWORD -e "USE $DB_NAME; CREATE TABLE IF NOT EXISTS first_table (id INT, name VARCHAR(256));"

# Check if the creation was successful
if [ $? -eq 0 ]; then
  echo "Table first_table created successfully in database $DB_NAME"
else
  echo "Table first_table creation failed in database $DB_NAME"
fi
