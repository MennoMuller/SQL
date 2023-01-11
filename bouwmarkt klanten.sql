delete from klant;
delete from filiaal;
delete from product;
delete from aankoop;
delete from transactie;


insert into klant(klantnummer)
values(432210); --Clara

insert into klant(klantnummer, naam, adres, woonplaats)
values(412345, 'Kees', 'Kerkstraat 12', 'Groningen');

insert into klant(klantnummer, naam, adres, woonplaats)
values(543214, 'Pieter', 'Bergpad 5', 'Maastricht');

insert into filiaal(filiaalnummer, plaats, adres)
values(12, 'Amsterdam', 'Buitenweg 1');

insert into filiaal(filiaalnummer, plaats, adres)
values(24, 'Utrecht', 'Atoomweg 41');

insert into filiaal(filiaalnummer, plaats, adres)
values(36, 'Groningen', 'Burgerstraat 90');

insert into product(productnummer, omschrijving, prijs)
values(1, 'plank', 6.99);

insert into product(productnummer, omschrijving, prijs)
values(2, 'spijkers', 2.69);

insert into product(productnummer, omschrijving, prijs)
values(3, 'schroeven', 3.35);

insert into product(productnummer, omschrijving, prijs)
values(4, 'hamer', 2.99);

insert into product(productnummer, omschrijving, prijs)
values(5, 'boormachine', 24.49);

--Clara's aankoop
insert into transactie(datum, tijd, klantnummer, filiaalnummer, transactienummer)
values('2022-11-01', '15:45',432210,12,1);

insert into aankoop(aantal, product, transactienummer)
values(5,1,1);

insert into aankoop(aantal, product, transactienummer)
values(1,2,1);

insert into aankoop(aantal, product, transactienummer)
values(1,4,1);

--Pieter's aankoop
insert into transactie(datum, tijd, klantnummer, filiaalnummer, transactienummer)
values('2022-12-03', '12:25',543214,24,2);

insert into aankoop(aantal, product, transactienummer)
values(12,1,2);

insert into aankoop(aantal, product, transactienummer)
values(2,3,2);

insert into aankoop(aantal, product, transactienummer)
values(1,5,2);

--Kees z'n aankoop
insert into transactie(datum, tijd, klantnummer, filiaalnummer, transactienummer)
values('2022-12-06', '10:30',412345,36,3);

insert into aankoop(aantal, product, transactienummer)
values(2,1,3);

insert into transactie(datum, tijd, klantnummer, filiaalnummer, transactienummer)
values('2022-12-06', '12:30',412345,36,4);

insert into aankoop(aantal, product, transactienummer)
values(1,3,4);


