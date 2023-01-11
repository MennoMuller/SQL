select boek.isbn, boek.titel, totaal 
from 
(select boekid, sum(aantal) as totaal from aankoop
group by boekid) Z
join boek on boek.id = Z.boekid;

select klant.email, klant.naam, boek.titel, totaal from
(select aankoop.boekid, winkelwagen.klantemail, 
 sum(aankoop.aantal) as totaal 
 from aankoop
 join winkelwagen ON winkelwagen.id = aankoop.winkelwagenid
 where winkelwagen.klantemail = 'a_devries@adelaarsnest.nl'
group by boekid, klantemail) Z
join klant on klant.email = Z.klantemail
join boek on boek.id = Z.boekid;

select filiaal.adres, filiaal.plaats, boek.titel, voorraad.aantal from voorraad
join filiaal on filiaal.id = voorraad.filiaalid
join boek on boek.id = voorraad.boekid
where voorraad.aantal > 0
order by filiaal.id;