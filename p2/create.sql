drop table if exists AuctionUsers;
create table AuctionUsers(
UserID INT NOT NULL, 
Rating INT NOT NULL,
Location CHAR(50),  
Country CHAR(50), 
PRIMARY KEY (UserID)
);

drop table if exists Items;
create table Bids(
ItemID INTEGER NOT NULL,
Name VARCHAR(30) NOT NULL, 
Category VARCHAR(20) NOT NULL, 
Currently REAL NOT NULL,
Buy_Price REAL,
First_Bid REAL NOT NULL,
Number_of_bids INTEGER NOT NULL,
Started CHAR(20) NOT NULL, 
Ends CHAR(20) NOT NULL,
Description VARCHAR(100), 
UserID INTEGER NOT NULL
PRIMARY KEY (ItemID),
FOREIGN KEY (UserID) REFERENCES AuctionUsers(UserID) ON UPDATE CASCADE  
);

drop table if exists Bids;
create table Bids(
ItemID INTEGER NOT NULL, 
UserID INTEGER NOT NULL, 
Time CHAR(20) NOT NULL, 
Amount REAL NOT NULL,
PRIMARY KEY (ItemID, UserID, Time), 
FOREIGN KEY (ItemID) ِِٰٰٰٔREFERENCES Items(ItemID) ON UPDATE CASCADE, 
FOREIGN KEY (UserID) REFERENCES AuctionUsers(UserID) ON UPDATE CASCADE
);
