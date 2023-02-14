#!/bin/bash
mysql -uroot -p hbtn_0c_0 <<EOF
DELETE FROM second_table WHERE score <= 5;
EOF
