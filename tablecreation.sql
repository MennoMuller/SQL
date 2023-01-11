DROP TABLE IF EXISTS lidmaatschap;

DROP TABLE IF EXISTS speler;

DROP TABLE IF EXISTS club;

CREATE TABLE speler (
	nummer integer PRIMARY KEY,
	naam varchar(255) NOT NULL,
	adres varchar(255),
	woonplaats varchar(255),
	geboortedatum DATE,
	rating INTEGER
);

CREATE TABLE lidmaatschap (
	ID serial NOT NULL,
	begindatum date,
	einddatum date,
	spelernummer integer,
	clubnummer integer
);

CREATE TABLE club (
	nummer integer,
	naam varchar(255),
	adres varchar(255),
	plaats varchar(255),
	logo bytea
);

ALTER TABLE
	club
ADD
	PRIMARY KEY (nummer);

ALTER TABLE
	lidmaatschap
ADD
	CONSTRAINT lidmaatschap_spelernr_fk FOREIGN KEY(spelernummer) REFERENCES speler(nummer);

ALTER TABLE
	lidmaatschap
ADD
	CONSTRAINT lidmaatschap_clubnr_fk FOREIGN KEY(clubnummer) REFERENCES club(nummer);