#!/bin/bash

mysql -u root -p hbtn_0c_0 <<EOF
SELECT score, COUNT(*) as number FROM second_table
GROUP BY score
ORDER BY number DESC;
EOF
