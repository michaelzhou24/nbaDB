INSERT INTO Country values ("49, -123", "Canada");
INSERT INTO Country values("39, -510", "Mexico");
INSERT INTO Country values("29, -423", "Zimbabwe");
INSERT INTO Country values("19, -323", "Australia");
INSERT INTO Country values("9, -223", "Taiwan");
INSERT INTO Country values("30, -123", "United States");

INSERT INTO Currency values ("49, -123", "CAD");
INSERT INTO Currency values("39, -510", "PESO");
INSERT INTO Currency values("29, -423", "ZMB");
INSERT INTO Currency values("19, -323", "KANG");
INSERT INTO Currency values("9, -223", "YEN");
INSERT INTO Currency values("30, -123", "USD");

INSERT INTO Sponsorships(1, "Adidas")
INSERT INTO Sponsorships(2, "Jordan")
INSERT INTO Sponsorships(3, "Yeezy")
INSERT INTO Sponsorships(4, "Balenciaga")
INSERT INTO Sponsorships(5, "Nike")

INSERT INTO Funds(1, 1, 1)
INSERT INTO Funds(2, 2, 2)
INSERT INTO Funds(3, 3, 3)
INSERT INTO Funds(4, 4, 4)
INSERT INTO Funds(5, 5, 5)

INSERT INTO City values(1, "San Francisco","49, -123", 1005000000, 600000);
INSERT INTO City values(2, "Los Angeles", "39, -510", 200000000, 900000);
INSERT INTO City values(3, "Sacramento", "29, -423", 500000, 300000);
INSERT INTO City values(4, "Boston", "19, -323", 23423458, 400000);
INSERT INTO City values(5, "Toronto", "9, -223", 300000000, 10000000);
INSERT INTO City values(6, "Portland","49, -123", 1005000000, 600000);
INSERT INTO City values(7, "Oklahoma City", "39, -510", 200000000, 900000);
INSERT INTO City values(8, "Miami", "29, -423", 500000, 300000);
INSERT INTO City values(9, "Brooklyn", "19, -323", 23423458, 400000);
INSERT INTO City values(10, "New York", "9, -223", 300000000, 10000000);

INSERT INTO HasMascot("Laquan", "Wolf")
INSERT INTO HasMascot("Mike", "Hunter")
INSERT INTO HasMascot("Wen", "Spider")
INSERT INTO HasMascot("Michael", "Bat")
INSERT INTO HasMascot("Asad", "Lion")

INSERT INTO TeamPlaysIn values(1, 1, "Warriors", "bridge");
INSERT INTO TeamPlaysIn values(2, 2, "Lakers", "basketball");
INSERT INTO TeamPlaysIn values( 3, 3, "Kings", "king");
INSERT INTO TeamPlaysIn values(4, 4, "Celtics", "clover");
INSERT INTO TeamPlaysIn values(5, 5, "Raptors", "raptor");
INSERT INTO TeamPlaysIn values(6, 6, "Trail Blazers", "trailblazer");
INSERT INTO TeamPlaysIn values(7, 2, "Clippers", "paperclip");
INSERT INTO TeamPlaysIn values(8, 8, "Thunder", "thunder");
INSERT INTO TeamPlaysIn values(9, 9, "Heat", "basketballhot");
INSERT INTO TeamPlaysIn values(10, 10, "Nets", "net");
INSERT INTO TeamPlaysIn values(11, 11, "Knicks", "knick");

INSERT INTO Stadium(1, "Rogers' Arena");
INSERT INTO Stadium(2, "GMC Center");
INSERT INTO Stadium(3, "Old Tafford");
INSERT INTO Stadium(4, "Staples Centre");
INSERT INTO Stadium(5, "IKB");

INSERT INTO Game(1, "Warriors", "Lakers", "Lakers");
INSERT INTO Game(2, "Warriors", "Raptors", "Raptors");
INSERT INTO Game(3, "Warriors", "Bucks", "Bucks");
INSERT INTO Game(4, "Warriors", "Clippers", "Clippers");
INSERT INTO Game(5, "Warriors", "Jazz", "Jazz");

--Note* teamID now just references name
INSERT INTO PlayerPlaysFor values(1, "Warriors", 30, "Stephen Curry", "G", 3.5);
INSERT INTO PlayerPlaysFor values(2, "Lakers", 13, "Jeremy Lin", "G", -1);
INSERT INTO PlayerPlaysFor values(3, "Kings", 30, "Lebron James", "F", 4);
INSERT INTO PlayerPlaysFor values(4, "Celtics", 8, "Buddy Hield", "G", 3.5);
INSERT INTO PlayerPlaysFor values(5, "Raptors", 4, "Deaaron Fox", "G", 3.5);
INSERT INTO PlayerPlaysFor values(6, "Clippers", 6, "Kawhi Leonard", "F", 4);
INSERT INTO PlayerPlaysFor values(7, "Thunder", 3, "Chris Paul", "G", 2);
INSERT INTO PlayerPlaysFor values(8, "Heat", 14, "Jimmy Butler", "F", 3);
INSERT INTO PlayerPlaysFor values(9, "Nets", 35, "Kevin Durant", "F", 4);
INSERT INTO PlayerPlaysFor values(10, "Knicks", 23, "RJ Barrett", "F", 1);

INSERT INTO TeamPlaysGame(1, 2)
INSERT INTO TeamPlaysGame(2, 3)
INSERT INTO TeamPlaysGame(3, 6)
INSERT INTO TeamPlaysGame(4, 5)
INSERT INTO TeamPlaysGame(5, 1)

INSERT INTO SeasonOf(2012, 1, "First")
INSERT INTO SeasonOf(2013, 2, "Third")
INSERT INTO SeasonOf(2014, 3, "Second")
INSERT INTO SeasonOf(2015, 4, "Tenth")
INSERT INTO SeasonOf(2016, 5, "Seventh")
--TODO// create more insertions(min 5) for each remaining table in tableCreation