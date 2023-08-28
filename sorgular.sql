use BBP104_210111361

--S�tunun t�r�n� de�i�tirme
alter table Musteri alter column MusteriAd nchar(20)

--tabloya s�tun ekleme
alter table Musteri add MusteriSayisi decimal

--tablodaki s�tunu kald�rma
alter table Kurye drop column KuryeDerece

--t�m tabloyu se�me
select * from Urun

--telefonu 05505107095 olan m�sterinin id, ad ve soyad�
select MusteriID, MusteriAd, MusteriSoyad from Musteri where MusteriTel=05505107095

--ismi 'b' yada 'r' harfiyle ba�layanlar
select * from Musteri where MusteriAd like '[b,r]%'

--soyad�nda 'n' harfi ge�enler
select MusteriID from Musteri where MusteriSoyad like '%n%'

--derecesi 94 id'si 1009 olan kasiyerin ad�
select KasiyerAd from Kasiyer where KasiyerID=1009 and KasiyerDerece=94

--derecesi 75 - 100 aras� olan kasiyerlerin ad�
select KasiyerAd from Kasiyer where KasiyerDerece>=75 and KasiyerDerece<=100
select KasiyerAd from Kasiyer where KasiyerDerece between 75 and 100

--derecesi 70 den k���k veya 90 dan b�y�k olan kasiyerlerin ad�
select KasiyerAd from Kasiyer where KasiyerDerece<70 or KasiyerDerece>90

--id si 2005 den b�y�k olan kurye adlar�n� yine kurye adlar�na g�re artan s�rada s�ralama
select KuryeAd from Kurye where KuryeID>2005 order by KuryeAd asc

--iki farkl� tablodaki ayn� verilerin birle�imi
select SiparisUcret from Siparis
union
select SiparisUcret from Odeme

--iki farkl� tablodaki verilerin kesi�imi
select MusteriID from Musteri
intersect
select MusteriID from Siparis

--bir tablonun di�erinden fark�
select MusteriID from Musteri
except
select MusteriID from Siparis

--tekrarl� kay�tlar� tek kay�t olarak listeler
select distinct (KasiyerID) from Kasiyer 

--id si 2003, 2005, 2009 olan kurye tablosundaki t�m veriler
select*from Kurye where KuryeID in (2003,2005,2009)

--id si 2002, 2004, 2008 olmayan kurye tablosundaki t�m veriler
select*from Kurye where KuryeID not in (2002,2004,2008)

--�r�n tablosundaki veri sat�r�n�n say�s�
select count(*) from Urun

--urun tablosundaki fiyat toplam�
select sum (UrunFiyat) from Urun

--id si 1005 ten k���k olan kasiyer adlar�n�n �stten 2 sat�r�n listelenmesi
select top 2 KasiyerAd from Kasiyer where KasiyerID<1005

--�r�n fiyat�n� a�a��ya, yukar�ya yuvarlama ve virg�lden sonra 1 basama�� g�sterme
select	UrunFiyat as 'Nakliye �creti',
		floor(UrunFiyat) as 'Floor',
		ceiling(UrunFiyat) as 'Ceiling',
		round(UrunFiyat,1) as 'Round'
		from Urun

--verileri istedi�imiz �ekilde g�r�nt�leme
select KuryeID, KuryeDerece,
replace(KuryeID,'5','Ahmet') as 'KuryeAd' from Kurye where KuryeID=2006

--id si 1001 olan kasiyeri 1 yapma
update Kasiyer set KasiyerID='1' where KasiyerID=1001

--derecesi 70 olan kasiyeri silme
delete from Kasiyer where KasiyerDerece=70

--�r�n tablosunu silme
truncate table Urun

--�r�n fiyatlar�n�n max - min de�erlerini ve ortalamas�n� alma
select avg(UrunFiyat) as 'Ortalama' from Urun
select max(UrunFiyat) as 'En Y�ksek Not' from Urun
select min (UrunFiyat) as 'En D���k Not' from Urun

--bug�nk� tarihi g�r�nt�leme
select getdate()

--tarihi y�l-ay-hafta-g�n-�eyrek olarak g�sterme
select datepart(year, getdate())as 'y�l',
datepart(month, getdate()) as 'Ay',
datepart(week, getdate()) as 'hafta',
datepart(day, getdate()) as 'g�n',
datepart(quarter, getdate()) as '�eyrek'

select dateadd(day, 20, getdate())

--�r�n ad�n�n soldan iki sa�dan �� karakterini g�sterme
select Urunadi, left(UrunAdi,2)+'****'+right(UrunAdi,3) from Urun

--�r�n ad�n�n ���nc� karakterinden sonra bo�luk dahil 4 karakterini alma
select UrunAdi, substring(UrunAdi, 3,4) from Urun

--�r�n ad�n�n uzunlu�u
select UrunAdi, len(UrunAdi) from Urun

--�r�n ad�n� b�y�k ve k���k �ekilde yazd�rma
select UrunAdi,
upper(UrunAdi) as 'B�y�k Harf',
lower(UrunAdi) as'K���k Harf'
from Urun

--�r�nlerin ilk 3 harfini b�y�k sonras�n� oldu�u gibi yazan sorgu
select UrunAdi, upper(left(UrunAdi,3))+
substring(UrunAdi,4,(len(Urunadi)-3)) from Urun

--�r�n ad�n� tersten yazma
select UrunAdi, reverse(UrunAdi) from Urun

--inner join
select MusteriAd, MusteriSoyad
from Musteri M1 inner join Siparis S1 
on M1.MusteriID = S1.MusteriID


--left outer join
select MusteriAd,MusteriSoyad 
from Musteri left outer join Siparis 
on Musteri.MusteriID=Siparis.MusteriID

--right outer join
select MusteriAd,MusteriSoyad 
from Musteri right outer join Siparis 
on Musteri.MusteriID=Siparis.MusteriID

--full outer join
select MusteriAd,MusteriSoyad 
from Musteri full outer join Siparis 
on Musteri.MusteriID=Siparis.MusteriID

--cross join 
select MusteriAd, MusteriSoyad from Musteri cross join Siparis