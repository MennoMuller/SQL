DROP TABLE IF EXISTS voorraad;

DROP TABLE IF EXISTS aankoop;

DROP TABLE IF EXISTS winkelwagen;

DROP TABLE IF EXISTS boek;

DROP TABLE IF EXISTS filiaal;

DROP TABLE IF EXISTS uitgever;

DROP TABLE IF EXISTS auteur;

DROP TABLE IF EXISTS klant;

CREATE TABLE filiaal(
    id serial NOT NULL,
    adres varchar(30) NOT NULL,
    plaats varchar(30) NOT NULL,
    telefoonnr integer NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE auteur(
    naam varchar(30) NOT NULL,
    geb_jaar integer NOT NULL,
    url varchar(255) NOT NULL,
    PRIMARY KEY (naam)
);

CREATE TABLE uitgever(
    naam varchar(30) NOT NULL,
    adres varchar(30) NOT NULL,
    plaats varchar(30) NOT NULL,
    telefoonnr integer,
    url varchar(255) NOT NULL,
    PRIMARY KEY (naam)
);

CREATE TABLE boek(
    id serial NOT NULL,
    isbn bigint NOT NULL,
    titel varchar(50) NOT NULL,
    jaar integer NOT NULL,
    prijs integer NOT NULL,
    uitgevernaam varchar(30) NOT NULL,
    auteurnaam varchar(30) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE klant(
    email varchar(30) NOT NULL,
    naam varchar(30) NOT NULL,
    telefoonnr integer,
    adres varchar(30) NOT NULL,
    plaats varchar(30) NOT NULL,
    PRIMARY KEY (email)
);

CREATE TABLE winkelwagen(
    id serial NOT NULL,
    klantemail varchar(30) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE aankoop(
    aantal integer NOT NULL,
    boekid integer NOT NULL,
    winkelwagenid integer NOT NULL,
    PRIMARY KEY (boekid, winkelwagenid)
);

CREATE TABLE voorraad(
    aantal integer NOT NULL,
    boekid integer NOT NULL,
    filiaalid integer NOT NULL,
    PRIMARY KEY (boekid, filiaalid)
);

ALTER TABLE
    voorraad
ADD
    CONSTRAINT voorraad_filiaal_fk FOREIGN KEY (filiaalid) REFERENCES filiaal(id);

ALTER TABLE
    voorraad
ADD
    CONSTRAINT voorraad_boek_fk FOREIGN KEY (boekid) REFERENCES boek(id);

ALTER TABLE
    aankoop
ADD
    CONSTRAINT aankoop_boek_fk FOREIGN KEY (boekid) REFERENCES boek(id);

ALTER TABLE
    aankoop
ADD
    CONSTRAINT aankoop_winkelwagen_fk FOREIGN KEY (winkelwagenid) REFERENCES winkelwagen(id);

ALTER TABLE
    winkelwagen
ADD
    CONSTRAINT winkelwagen_klant_fk FOREIGN KEY (klantemail) REFERENCES klant(email);

ALTER TABLE
    boek
ADD
    CONSTRAINT boek_uitgever_fk FOREIGN KEY (uitgevernaam) REFERENCES uitgever(naam);

ALTER TABLE
    boek
ADD
    CONSTRAINT boek_auteur_fk FOREIGN KEY (auteurnaam) REFERENCES auteur(naam);