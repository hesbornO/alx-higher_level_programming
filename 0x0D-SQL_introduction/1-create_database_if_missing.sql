#!/usr/bin/env bash

# Replace YOUR_USERNAME and YOUR_PASSWORD with your MySQL credentials
USERNAME="YOUR_USERNAME"
PASSWORD="YOUR_PASSWORD"
DB_NAME="hbtn_0c_0"

# Use mysql to create the database if it doesn't exist
mysql -u $USERNAME -p$PASSWORD -e "CREATE DATABASE IF NOT EXISTS $DB_NAME"

# Check if the creation was successful
if [ $? -eq 0 ]; then
  echo "Database $DB_NAME created successfully"
else
  echo "Database $DB_NAME creation failed"
fi
