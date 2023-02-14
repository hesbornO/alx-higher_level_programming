#!/bin/bash

# database name passed as argument
DB_NAME=$1

# run mysql command to fetch required data
mysql -u root -p $DB_NAME -e "SELECT score, name FROM second_table WHERE name IS NOT NULL ORDER BY score DESC;"
