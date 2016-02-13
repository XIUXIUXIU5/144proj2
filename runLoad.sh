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

sort Item.del | uniq
sort ItemCategory.del | uniq
sort ItemBid.del | uniq
sort Bidder.del | uniq
sort Seller.del | uniq

mysql CS144 < load.sql

rm *.del
