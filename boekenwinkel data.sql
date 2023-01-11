INSERT INTO
    filiaal(adres, plaats, telefoonnr)
VALUES
    ('Rokin 9', 'Amsterdam', 0205231481),
    ('Oudegracht 112-b', 'Utrecht', 0302335200),
    ('Coolsingel 129', 'Den Haag', 0104132070),
    ('Kerkstraat 27', '''s-Hertogenbosch', 0733020100);

INSERT INTO
    uitgever
VALUES
    (
        'Pan Macmillan',
        '6 Briset Street',
        'London',
        123456789,
        'https://www.panmacmillan.com'
    ),
    (
        'Grand Central',
        '237 Park Ave Fl 16',
        'New York City',
        234567890,
        'https://www.grandcentralpublishing.com'
    );

INSERT INTO
    auteur
VALUES
    (
        'David Baldacci',
        1960,
        'https://www.davidbaldacci.com'
    ),
    (
        'Douglas Adams',
        1952,
        'https://douglasadams.com'
    );

INSERT INTO
    boek(
        isbn,
        titel,
        jaar,
        prijs,
        uitgevernaam,
        auteurnaam
    )
VALUES
    (
        9781509874538,
        'Walk the Wire',
        2020,
        699,
        'Pan Macmillan',
        'David Baldacci'
    ),
    (
        9781538709573,
        'The Camel Club',
        2005,
        1799,
        'Grand Central',
        'David Baldacci'
    ),
    (
        9781529034585,
        'Dirk Gently''s Holistic Detective Agency',
        1987,
        799,
        'Pan Macmillan',
        'Douglas Adams'
    );

INSERT INTO
    klant
VALUES
    (
        'a_devries@adelaarsnest.nl',
        'Arend de Vries',
        0612345678,
        'Adelaarsnest 12',
        'Haarlem'
    ),
    (
        'bboer@boeren.nl',
        'Bert Boer',
        0623456789,
        'Mesthoop 1',
        'Dorp'
    ),
    (
        'c_kordaat@gmail.com',
        'Cornelis Kordaat',
        0634567890,
        'Kerkstraat 11',
        'Utrecht'
    );

INSERT INTO
    winkelwagen(klantemail)
VALUES
    ('a_devries@adelaarsnest.nl'),
    ('bboer@boeren.nl'),
    ('c_kordaat@gmail.com'),
    ('a_devries@adelaarsnest.nl');

INSERT INTO
    aankoop
VALUES
    (1, 1, 1),
    (1, 2, 1),
    (4, 3, 2),
    (3, 1, 3),
    (1, 3, 4);

INSERT INTO
    voorraad
VALUES
    (10, 1, 1),
    (15, 1, 2),
    (20, 1, 3),
    (5, 1, 4),
    (11, 2, 1),
    (23, 2, 2),
    (34, 2, 3),
    (125, 2, 4),
    (56, 3, 1),
    (2, 3, 2),
    (29, 3, 3),
    (16, 3, 4);