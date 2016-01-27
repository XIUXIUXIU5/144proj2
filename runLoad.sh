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

sort ~/data/Item.del | uniq
sort ~/data/ItemCategory.del | uniq
sort ~/data/ItemBid.del | uniq
sort ~/data/Bidder.del | uniq
sort ~/data/Seller.del | uniq

mysql CS144 < load.sql

rm ~/data/*.del