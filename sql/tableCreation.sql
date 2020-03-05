use nbaDB;
DROP TABLE IF EXISTS Country;
CREATE TABLE Country(
    coordinates char(20),
    name char(20),
    PRIMARY KEY (coordinates)
) ENGINE=InnoDB;

use nbaDB;
DROP TABLE IF EXISTS Currency;
CREATE TABLE Currency(
    coordinates char(20),
    name char(20),
    PRIMARY KEY (coordinates)
)	ENGINE=InnoDB;

use nbaDB;
DROP TABLE IF EXISTS City;
CREATE TABLE City(
    id Integer,
    name CHAR(20),
    coordinates CHAR(20),
    gdp INTEGER,
    population INTEGER,
    PRIMARY KEY (id),
    FOREIGN KEY (coordinates) REFERENCES Country (coordinates),
    FOREIGN KEY (coordinates) REFERENCES Currency (coordinates)
) ENGINE=InnoDB;


DROP TABLE IF EXISTS TeamPlaysIn;
use nbaDB;
CREATE TABLE TeamPlaysIn (
    id Integer,
    cityID Integer,
    name CHAR(20),
    logo CHAR(20),
    PRIMARY KEY (id, cityID),
    FOREIGN KEY (cityID) REFERENCES City(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
)	ENGINE=InnoDB;

DROP TABLE IF EXISTS PlayerPlaysFor;
CREATE TABLE PlayerPlaysFor(
    id Integer,
    teamID Integer,
    number INTEGER,
    name CHAR(20),
    position CHAR(20),
    zscore FLOAT,
    PRIMARY KEY (id),
    FOREIGN KEY (teamID) REFERENCES TeamPlaysIn(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
)	ENGINE=InnoDB;
