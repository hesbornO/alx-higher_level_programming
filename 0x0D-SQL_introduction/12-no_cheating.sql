#!/bin/bash
mysql -uroot -p hbtn_0c_0 <<EOF
UPDATE second_table SET score=10 WHERE name='Bob';
EOF
