select distinct filiaal.filiaalnummer, filiaal.adres, filiaal.plaats, transactie.datum 
from transactie
join filiaal on filiaal.filiaalnummer = transactie.filiaalnummer
where transactie.klantnummer = 543214;

-- select sum(product.prijs * aankoop.aantal) 
-- from transactie
-- join aankoop on aankoop.transactienummer = transactie.transactienummer
-- join product on product.productnummer = aankoop.product
-- where transactie.klantnummer = 432210;

select filiaal.filiaalnummer, filiaal.adres, filiaal.plaats, count(aankoop.transactienummer) 
from transactie
join filiaal on filiaal.filiaalnummer = transactie.filiaalnummer
join aankoop on aankoop.transactienummer = transactie.transactienummer
where aankoop.product = 1 and transactie.datum < '2023-01-01' and transactie.datum > '2022-11-30'
group by filiaal.filiaalnummer;