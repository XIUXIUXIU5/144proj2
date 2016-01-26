#!/bin/bash
S2="$(mysql -N -s -e "select count(*) from information_schema.tables where table_schema='CS144';")" 
if [ $S2 -gt 0 ]; 
then
	echo "drop"
	mysql CS144 < drop.sql
fi

mysql CS144 < create.sql

ant
ant run-all

sort -u ~/data/Bidder.del
sort -u ~/data/Seller.del

mysql CS144 < load.sql

rm ~/data/*.del