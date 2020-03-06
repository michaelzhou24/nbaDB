CREATE TABLE Country(
    coordinates varchar(20),
    name varchar(20),
    PRIMARY KEY (coordinates)
);


CREATE TABLE Currency(
    coordinates varchar(20),
    name varchar(20),
    PRIMARY KEY (coordinates)
);

CREATE TABLE HasMascot (
    name varchar(20),
    appearance varchar(30)
);


CREATE TABLE Sponsorships(
    id varchar(20),
    name varchar(20) UNIQUE,
    PRIMARY KEY (id)
);

CREATE TABLE City(
    id varchar(20),
    name varchar(20),
    coordinates varchar(20),
    gdp INTEGER,
    population INTEGER,
    PRIMARY KEY (id),
    FOREIGN KEY (coordinates) REFERENCES Country (coordinates),
    FOREIGN KEY (coordinates) REFERENCES Currency (coordinates)
);

CREATE TABLE TeamPlaysIn (
    id varchar(20),
    cityID varchar(20),
    name varchar(20) UNIQUE,
    logo varchar(20),
    PRIMARY KEY (id, cityID),
    FOREIGN KEY (cityID) REFERENCES City(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE PlayerPlaysFor(
    id varchar(20),
    teamID varchar(20),
    number INTEGER,
    name varchar(20),
    position varchar(3),
    zscore FLOAT,
    PRIMARY KEY (id),
    FOREIGN KEY (teamID) REFERENCES TeamPlaysIn(name)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);


CREATE TABLE Coach(
    id varchar(20),
    name varchar(20),
    years INTEGER,
    specialization varchar(20),
    teamID varchar(20),
    PRIMARY KEY (id),
    FOREIGN KEY (teamID) REFERENCES TeamPlaysIn (name)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);


CREATE TABLE Funds(
    teamID varchar(20),
    sponsorID varchar(20),
    amount integer,
    PRIMARY KEY(teamID, sponsorID),
    FOREIGN KEY (teamID) REFERENCES TeamPlaysIn (name)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (sponsorID) REFERENCES Sponsorships (name)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE Stadium(
    teamID varchar(24),
    name varchar(24),
    PRIMARY KEY (teamID),
    FOREIGN KEY (teamID) REFERENCES TeamPlaysIn(name)
);

CREATE TABLE Game(
    id integer,
    teamA varchar(24),
    teamB varchar(24),
    winner varchar(24),
    PRIMARY KEY (id),
    FOREIGN KEY (teamA) REFERENCES Stadium(teamID)
);


CREATE TABLE TeamPlaysGame(
    gameID integer,
    teamID varchar(20),
    PRIMARY KEY (gameID, teamID),
    FOREIGN KEY (gameID) REFERENCES Game(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (teamID) REFERENCES TeamPlaysIn(name)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE SeasonOf(
    year integer,
    teamID varchar(20),
    standing varchar(20),
    PRIMARY KEY (year, teamID),
    FOREIGN KEY (teamID) REFERENCES TeamPlaysIn(name)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);