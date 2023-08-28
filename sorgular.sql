use BBP104_210111361

--Sütunun türünü deðiþtirme
alter table Musteri alter column MusteriAd nchar(20)

--tabloya sütun ekleme
alter table Musteri add MusteriSayisi decimal

--tablodaki sütunu kaldýrma
alter table Kurye drop column KuryeDerece

--tüm tabloyu seçme
select * from Urun

--telefonu 05505107095 olan müsterinin id, ad ve soyadý
select MusteriID, MusteriAd, MusteriSoyad from Musteri where MusteriTel=05505107095

--ismi 'b' yada 'r' harfiyle baþlayanlar
select * from Musteri where MusteriAd like '[b,r]%'

--soyadýnda 'n' harfi geçenler
select MusteriID from Musteri where MusteriSoyad like '%n%'

--derecesi 94 id'si 1009 olan kasiyerin adý
select KasiyerAd from Kasiyer where KasiyerID=1009 and KasiyerDerece=94

--derecesi 75 - 100 arasý olan kasiyerlerin adý
select KasiyerAd from Kasiyer where KasiyerDerece>=75 and KasiyerDerece<=100
select KasiyerAd from Kasiyer where KasiyerDerece between 75 and 100

--derecesi 70 den küçük veya 90 dan büyük olan kasiyerlerin adý
select KasiyerAd from Kasiyer where KasiyerDerece<70 or KasiyerDerece>90

--id si 2005 den büyük olan kurye adlarýný yine kurye adlarýna göre artan sýrada sýralama
select KuryeAd from Kurye where KuryeID>2005 order by KuryeAd asc

--iki farklý tablodaki ayný verilerin birleþimi
select SiparisUcret from Siparis
union
select SiparisUcret from Odeme

--iki farklý tablodaki verilerin kesiþimi
select MusteriID from Musteri
intersect
select MusteriID from Siparis

--bir tablonun diðerinden farký
select MusteriID from Musteri
except
select MusteriID from Siparis

--tekrarlý kayýtlarý tek kayýt olarak listeler
select distinct (KasiyerID) from Kasiyer 

--id si 2003, 2005, 2009 olan kurye tablosundaki tüm veriler
select*from Kurye where KuryeID in (2003,2005,2009)

--id si 2002, 2004, 2008 olmayan kurye tablosundaki tüm veriler
select*from Kurye where KuryeID not in (2002,2004,2008)

--ürün tablosundaki veri satýrýnýn sayýsý
select count(*) from Urun

--urun tablosundaki fiyat toplamý
select sum (UrunFiyat) from Urun

--id si 1005 ten küçük olan kasiyer adlarýnýn üstten 2 satýrýn listelenmesi
select top 2 KasiyerAd from Kasiyer where KasiyerID<1005

--ürün fiyatýný aþaðýya, yukarýya yuvarlama ve virgülden sonra 1 basamaðý gösterme
select	UrunFiyat as 'Nakliye Ücreti',
		floor(UrunFiyat) as 'Floor',
		ceiling(UrunFiyat) as 'Ceiling',
		round(UrunFiyat,1) as 'Round'
		from Urun

--verileri istediðimiz þekilde görüntüleme
select KuryeID, KuryeDerece,
replace(KuryeID,'5','Ahmet') as 'KuryeAd' from Kurye where KuryeID=2006

--id si 1001 olan kasiyeri 1 yapma
update Kasiyer set KasiyerID='1' where KasiyerID=1001

--derecesi 70 olan kasiyeri silme
delete from Kasiyer where KasiyerDerece=70

--ürün tablosunu silme
truncate table Urun

--ürün fiyatlarýnýn max - min deðerlerini ve ortalamasýný alma
select avg(UrunFiyat) as 'Ortalama' from Urun
select max(UrunFiyat) as 'En Yüksek Not' from Urun
select min (UrunFiyat) as 'En Düþük Not' from Urun

--bugünkü tarihi görüntüleme
select getdate()

--tarihi yýl-ay-hafta-gün-çeyrek olarak gösterme
select datepart(year, getdate())as 'yýl',
datepart(month, getdate()) as 'Ay',
datepart(week, getdate()) as 'hafta',
datepart(day, getdate()) as 'gün',
datepart(quarter, getdate()) as 'çeyrek'

select dateadd(day, 20, getdate())

--ürün adýnýn soldan iki saðdan üç karakterini gösterme
select Urunadi, left(UrunAdi,2)+'****'+right(UrunAdi,3) from Urun

--ürün adýnýn üçüncü karakterinden sonra boþluk dahil 4 karakterini alma
select UrunAdi, substring(UrunAdi, 3,4) from Urun

--ürün adýnýn uzunluðu
select UrunAdi, len(UrunAdi) from Urun

--ürün adýný büyük ve küçük þekilde yazdýrma
select UrunAdi,
upper(UrunAdi) as 'Büyük Harf',
lower(UrunAdi) as'Küçük Harf'
from Urun

--ürünlerin ilk 3 harfini büyük sonrasýný olduðu gibi yazan sorgu
select UrunAdi, upper(left(UrunAdi,3))+
substring(UrunAdi,4,(len(Urunadi)-3)) from Urun

--ürün adýný tersten yazma
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