select klantnr, count(bestnr) as totaal_aantal_keer_besteld from bestelling
group by klantnr
having count(bestnr) > 1;

Select avg(totaal_bestellingen) AS totaal_gemiddeld from 
(Select count(bestnr) as totaal_bestellingen
from bestelling
group by klantnr) Z;

select artikel.naam, sum(besteldartikel.aantal) as hoeveelheid from besteldartikel
inner join artikel on artikel.artnr = besteldartikel.artnr
inner join bestelling ON bestelling.bestnr = besteldartikel.bestnr
inner join klant ON klant.klantnr = bestelling.klantnr
where klant.naam = 'Groot'
group by artikel.naam;
