#!/bin/bash
mysql -uroot -p hbtn_0c_0 <<EOF
SELECT score, name FROM second_table ORDER BY score DESC;
EOF
