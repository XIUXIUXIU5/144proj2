CREATE TABLE Seller(
	SellerID VARCHAR(50) NOT NULL,
	Rating DECIMAL(8,2),
	PRIMARY KEY(SellerID)
	);

CREATE TABLE Item(
	ItemID INT NOT NULL,
	Name VARCHAR(100) NOT NULL,
	Currently DECIMAL(8,2) NOT NULL, 
	Buy_Price DECIMAL(8,2), 
	First_Bid DECIMAL(8,2) NOT NULL, 
	Number_of_Bids INT NOT NULL,
	Location VARCHAR(100),
	Latitude DECIMAL(8,2),
	Logitude DECIMAL(8,2),
	Country VARCHAR(100),
	Started TIMESTAMP NOT NULL,
	Ends TIMESTAMP NOT NULL,
	SellerID VARCHAR(50) NOT NULL,
	Description VARCHAR(4000),
	PRIMARY KEY(ItemID)
	);

CREATE TABLE ItemCategory(
	ItemID INT NOT NULL,
	Category VARCHAR(50),
	PRIMARY KEY(ItemID, Category)
	);

CREATE TABLE Bidder(
	BidderID VARCHAR(50) NOT NULL,
	Rating DECIMAL(8,2),
	Location varchar(100),
	Country varchar(100),
	PRIMARY KEY(BidderID)
	);

CREATE TABLE ItemBid(
	ItemID INT NOT NULL,
	BidderID VARCHAR(50) NOT NULL,
	Time TIMESTAMP,
	Amount DECIMAL(8,2),
	PRIMARY KEY(ItemID, BidderID, Time)
	);