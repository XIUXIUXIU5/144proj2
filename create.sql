CREATE TABLE Seller(
	SellerID VARCHAR(50) NOT NULL,
	Rating DECIMAL(8,2),
	PRIMARY KEY(SellerID)
	);

CREATE TABLE Bidder(
	BidderID VARCHAR(50) NOT NULL,
	Rating DECIMAL(8,2),
	Location varchar(100),
	Country varchar(100),
	PRIMARY KEY(BidderID)
	);

CREATE TABLE Item(
	ItemID INT NOT NULL,
	Name VARCHAR(100) NOT NULL,
	Currently DECIMAL(8,2) NOT NULL, 
	Buy_Price DECIMAL(8,2), 
	First_Bid DECIMAL(8,2) NOT NULL, 
	Number_of_Bids INT NOT NULL,
	Location VARCHAR(100),
	Latitude varchar(256),
	Logitude varchar(256),
	Country VARCHAR(100),
	Started TIMESTAMP NOT NULL,
	Ends TIMESTAMP NOT NULL,
	SellerID VARCHAR(50) NOT NULL,
	Description VARCHAR(4000),
	PRIMARY KEY(ItemID),
	FOREIGN KEY(SellerID) REFERENCES Seller(SellerID)
	);

CREATE TABLE ItemCategory(
	ItemID INT NOT NULL,
	Category VARCHAR(50),
	PRIMARY KEY(ItemID, Category),
	FOREIGN KEY(ItemID) REFERENCES Item(ItemID)
	);

CREATE TABLE ItemBid(
	ItemID INT NOT NULL,
	BidderID VARCHAR(50) NOT NULL,
	Time TIMESTAMP,
	Amount DECIMAL(8,2),
	PRIMARY KEY(ItemID, BidderID, Time),
	FOREIGN KEY(ItemID) REFERENCES Item(ItemID),
	FOREIGN KEY(BidderID) REFERENCES Bidder(BidderID)
	);