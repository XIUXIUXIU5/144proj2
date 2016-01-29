select count(*) from ((select SellerID from Seller) Union (select BidderID from Bidder)) s;
select count(*) from Item where BINARY Location = "New York";
select count(*) from (select ItemID from ItemCategory group by ItemID Having count(Category) = 4 ) s;
select a.ItemID from Item a, ItemBid s where a.ItemID = s.ItemID AND a.Ends >= "2001-12-20 00:00:01" AND a.Currently >= (select MAX(Currently) from Item i, ItemBid b where i.ItemID = b.ItemID AND i.Ends >= "2001-12-20 00:00:01");
select count(*) from Seller where Rating > 1000;
select count(*) from Seller, Bidder where SellerID = BidderID;
select count(*) from (select distinct Category from ItemCategory where ItemID in (select distinct ItemID from ItemBid where Amount > 100)) s;
