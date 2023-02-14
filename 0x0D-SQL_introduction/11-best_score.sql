#!/bin/bash
mysql -uroot -p hbtn_0c_0 <<EOF
SELECT score, name FROM second_table WHERE score >= 10 ORDER BY score DESC;
EOF
