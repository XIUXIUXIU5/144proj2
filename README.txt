1.
Item(ItemID[key], Name, Currently, Buy_Price, First_Bid, Number_of_Bids, Location, Latitude, Logitude, Country, Started, Ends, SellerID, Description)
ItemCategory(ItemID,Category) key:ItemID,Category
ItemBid(ItemID,BidderID,Time,Amount) key:ItemID,BidderID,Time
Bidder(UserID[key],Rating,Location,Country)
Seller(UserID[key],Rating) 

2.
BidderID -> {Rating,Location,Country}
ItemID,BidderID,Time -> {Amount}
ItemID ->> Category
SellerID -> Rating

3.Yes
4.Yes