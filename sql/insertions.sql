INSERT INTO Country values ("49, -123", "Canada");
INSERT INTO Country values("39, -510", "Mexico");
INSERT INTO Country values("29, -423", "Zimbabwe");
INSERT INTO Country values("19, -323", "Australia");
INSERT INTO Country values("9, -223", "Taiwan");


INSERT INTO Currency values ("49, -123", "CAD");
INSERT INTO Currency values("39, -510", "PESO");
INSERT INTO Currency values("29, -423", "ZMB");
INSERT INTO Currency values("19, -323", "KANG");
INSERT INTO Currency values("9, -223", "YEN");


INSERT INTO City values(1, "San Francisco","49, -123", 1005000000, 600000);
INSERT INTO City values(2, "Los Angeles", "39, -510", 200000000, 900000);
INSERT INTO City values(3, "Sacramento", "29, -423", 500000, 300000);
INSERT INTO City values(4, "Boston", "19, -323", 23423458, 400000);
INSERT INTO City values(5, "Toronto", "9, -223", 300000000, 10000000);

INSERT INTO TeamPlaysIn values(1, 1, "Warriors", "bridge");
INSERT INTO TeamPlaysIn values(2, 2, "Lakers", "basketball");
INSERT INTO TeamPlaysIn values( 3, 3, "Kings", "king");
INSERT INTO TeamPlaysIn values(4, 4, "Celtics", "clover");
INSERT INTO TeamPlaysIn values(5, 5, "Raptors", "raptor");

INSERT INTO PlayerPlaysFor values(1, 1, 30, "Stephen Curry", "G", 3.5);
INSERT INTO PlayerPlaysFor values(2, 2, 13, "Jeremy Lin", "G", -1);
INSERT INTO PlayerPlaysFor values(3, 3, 30, "Lebron James", "F", 4);
INSERT INTO PlayerPlaysFor values(4, 4, 30, "Buddy Hield", "G", 3.5);
INSERT INTO PlayerPlaysFor values(5, 5, 30, "Deaaron Fox", "G", 3.5);

SELECT * FROM PlayerPlaysFor ORDER BY id ASC;