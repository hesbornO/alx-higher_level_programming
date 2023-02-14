#!/usr/bin/env bash



# Check if the database name was passed as an argument
if [ $# -eq 0 ]; then
  echo "Please provide the name of the database as an argument"
  exit 1
fi

DB_NAME=$1

# Use mysql to create the second_table if it doesn't exist
mysql -u $USERNAME -p$PASSWORD -e "USE $DB_NAME; CREATE TABLE IF NOT EXISTS second_table (id INT, name VARCHAR(256), score INT);"

# Use mysql to insert the four rows into the second_table
mysql -u $USERNAME -p$PASSWORD -e "USE $DB_NAME; INSERT INTO second_table (id, name, score) VALUES (1, 'John', 10), (2, 'Alex', 3), (3, 'Bob', 14), (4, 'George', 8);"
