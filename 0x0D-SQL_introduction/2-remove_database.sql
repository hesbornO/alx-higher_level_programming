#!/usr/bin/env bash

# Replace YOUR_USERNAME and YOUR_PASSWORD with your MySQL credentials
USERNAME="YOUR_USERNAME"
PASSWORD="YOUR_PASSWORD"
DB_NAME="hbtn_0c_0"

# Use mysqlshow to check if the database exists
if ! mysqlshow -u $USERNAME -p$PASSWORD $DB_NAME >/dev/null 2>&1; then
  echo "Database $DB_NAME does not exist"
else
  # Use mysql to drop the database
  mysql -u $USERNAME -p$PASSWORD -e "DROP DATABASE $DB_NAME"
  echo "Database $DB_NAME deleted successfully"
fi
