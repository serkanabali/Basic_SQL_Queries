USE [master]
GO
/****** Object:  Database [BBP104_210111361]    Script Date: 18.05.2022 12:29:59 ******/
CREATE DATABASE [BBP104_210111361]

USE [BBP104_210111361]
GO
/****** Object:  Table [dbo].[Kasiyer]    Script Date: 18.05.2022 12:29:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kasiyer](
	[KasiyerID] [smallint] NOT NULL,
	[KasiyerAd] [nchar](20) NOT NULL,
	[KasiyerSoyad] [nchar](20) NOT NULL,
	[KasiyerDerece] [smallint] NULL,
	[KasiyerTel] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kurye]    Script Date: 18.05.2022 12:29:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kurye](
	[KuryeID] [smallint] NOT NULL,
	[KuryeAd] [nchar](20) NOT NULL,
	[KuryeSoyad] [nchar](20) NOT NULL,
	[KuryeDerece] [smallint] NULL,
	[KuryeTel] [bigint] NOT NULL,
 CONSTRAINT [PK_Kurye] PRIMARY KEY CLUSTERED 
(
	[KuryeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Musteri]    Script Date: 18.05.2022 12:29:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Musteri](
	[MusteriID] [int] NOT NULL,
	[MusteriAd] [nchar](20) NOT NULL,
	[MusteriSoyad] [nchar](20) NOT NULL,
	[MusteriEposta] [nchar](50) NULL,
	[MusteriTel] [bigint] NOT NULL,
	[KasiyerDerece] [smallint] NULL,
 CONSTRAINT [PK_Musteri] PRIMARY KEY CLUSTERED 
(
	[MusteriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Odeme]    Script Date: 18.05.2022 12:29:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Odeme](
	[SiparisUcret] [smallmoney] NULL,
	[OdemeOnline] [smallmoney] NULL,
	[OdemeKasa] [smallmoney] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Siparis]    Script Date: 18.05.2022 12:29:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Siparis](
	[SiparisNo] [int] NOT NULL,
	[SiparisAdres] [nchar](300) NOT NULL,
	[SiparisUcret] [smallmoney] NULL,
	[SiparisTarih] [date] NULL,
	[MusteriID] [int] NOT NULL,
	[KuryeID] [smallint] NOT NULL,
	[UrunFiyat] [smallmoney] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Urun]    Script Date: 18.05.2022 12:29:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urun](
	[UrunBarkod] [bigint] NOT NULL,
	[UrunAdi] [nchar](100) NOT NULL,
	[UrunStok] [smallint] NULL,
	[UrunDerece] [smallint] NULL,
	[UrunFiyat] [smallmoney] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Kasiyer] ([KasiyerID], [KasiyerAd], [KasiyerSoyad], [KasiyerDerece], [KasiyerTel]) VALUES (1001, N'Sultan              ', N'Kaya                ', 82, 5504561212)
GO
INSERT [dbo].[Kasiyer] ([KasiyerID], [KasiyerAd], [KasiyerSoyad], [KasiyerDerece], [KasiyerTel]) VALUES (1002, N'Caner               ', N'Demir               ', 75, 5507894565)
GO
INSERT [dbo].[Kasiyer] ([KasiyerID], [KasiyerAd], [KasiyerSoyad], [KasiyerDerece], [KasiyerTel]) VALUES (1003, N'Zehra               ', N'Çelik               ', 81, 5507414114)
GO
INSERT [dbo].[Kasiyer] ([KasiyerID], [KasiyerAd], [KasiyerSoyad], [KasiyerDerece], [KasiyerTel]) VALUES (1008, N'Emre                ', N'Şahin               ', 86, 5509635225)
GO
INSERT [dbo].[Kasiyer] ([KasiyerID], [KasiyerAd], [KasiyerSoyad], [KasiyerDerece], [KasiyerTel]) VALUES (1009, N'Yağmur              ', N'Yıldırım            ', 94, 5507534224)
GO
INSERT [dbo].[Kasiyer] ([KasiyerID], [KasiyerAd], [KasiyerSoyad], [KasiyerDerece], [KasiyerTel]) VALUES (1004, N'Hasan               ', N'Öztürk              ', 71, 5509514862)
GO
INSERT [dbo].[Kasiyer] ([KasiyerID], [KasiyerAd], [KasiyerSoyad], [KasiyerDerece], [KasiyerTel]) VALUES (1005, N'Selma               ', N'Aydın               ', 89, 5509158426)
GO
INSERT [dbo].[Kasiyer] ([KasiyerID], [KasiyerAd], [KasiyerSoyad], [KasiyerDerece], [KasiyerTel]) VALUES (1010, N'Osman               ', N'Özdemir             ', 82, 5509317391)
GO
INSERT [dbo].[Kasiyer] ([KasiyerID], [KasiyerAd], [KasiyerSoyad], [KasiyerDerece], [KasiyerTel]) VALUES (1006, N'Melek               ', N'Arslan              ', 97, 5506842684)
GO
INSERT [dbo].[Kasiyer] ([KasiyerID], [KasiyerAd], [KasiyerSoyad], [KasiyerDerece], [KasiyerTel]) VALUES (1007, N'Ali                 ', N'Kurt                ', 70, 5507317317)
GO
INSERT [dbo].[Kurye] ([KuryeID], [KuryeAd], [KuryeSoyad], [KuryeDerece], [KuryeTel]) VALUES (2001, N'Musa                ', N'Yarar               ', 81, 5506455855)
GO
INSERT [dbo].[Kurye] ([KuryeID], [KuryeAd], [KuryeSoyad], [KuryeDerece], [KuryeTel]) VALUES (2002, N'Yakup               ', N'Şen                 ', 76, 5500474017)
GO
INSERT [dbo].[Kurye] ([KuryeID], [KuryeAd], [KuryeSoyad], [KuryeDerece], [KuryeTel]) VALUES (2003, N'Fatih               ', N'Çürük               ', 87, 5504613164)
GO
INSERT [dbo].[Kurye] ([KuryeID], [KuryeAd], [KuryeSoyad], [KuryeDerece], [KuryeTel]) VALUES (2004, N'Leyla               ', N'Tektaş              ', 93, 5503793765)
GO
INSERT [dbo].[Kurye] ([KuryeID], [KuryeAd], [KuryeSoyad], [KuryeDerece], [KuryeTel]) VALUES (2005, N'Gamze               ', N'Çınar               ', 96, 5500452014)
GO
INSERT [dbo].[Kurye] ([KuryeID], [KuryeAd], [KuryeSoyad], [KuryeDerece], [KuryeTel]) VALUES (2006, N'Arda                ', N'Güler               ', 83, 5501456321)
GO
INSERT [dbo].[Kurye] ([KuryeID], [KuryeAd], [KuryeSoyad], [KuryeDerece], [KuryeTel]) VALUES (2007, N'Alperen             ', N'Filiz               ', 71, 5507821782)
GO
INSERT [dbo].[Kurye] ([KuryeID], [KuryeAd], [KuryeSoyad], [KuryeDerece], [KuryeTel]) VALUES (2008, N'Hüseyin             ', N'Diri                ', 80, 5509784598)
GO
INSERT [dbo].[Kurye] ([KuryeID], [KuryeAd], [KuryeSoyad], [KuryeDerece], [KuryeTel]) VALUES (2009, N'Hakan               ', N'Çalhan              ', 72, 5509412941)
GO
INSERT [dbo].[Kurye] ([KuryeID], [KuryeAd], [KuryeSoyad], [KuryeDerece], [KuryeTel]) VALUES (2010, N'Ayhan               ', N'Baygın              ', 90, 5508932896)
GO
INSERT [dbo].[Musteri] ([MusteriID], [MusteriAd], [MusteriSoyad], [MusteriEposta], [MusteriTel], [KasiyerDerece]) VALUES (1001001, N'Yusuf               ', N'Akay                ', N'yakay@mail.com                                    ', 5505107095, 82)
GO
INSERT [dbo].[Musteri] ([MusteriID], [MusteriAd], [MusteriSoyad], [MusteriEposta], [MusteriTel], [KasiyerDerece]) VALUES (1001002, N'Samet               ', N'Budak               ', N'sbudak@mail.com                                   ', 5456885132, 81)
GO
INSERT [dbo].[Musteri] ([MusteriID], [MusteriAd], [MusteriSoyad], [MusteriEposta], [MusteriTel], [KasiyerDerece]) VALUES (1001003, N'Ayşe                ', N'Çevik               ', N'acevik@mail.com                                   ', 5377655510, 75)
GO
INSERT [dbo].[Musteri] ([MusteriID], [MusteriAd], [MusteriSoyad], [MusteriEposta], [MusteriTel], [KasiyerDerece]) VALUES (1001004, N'Betül               ', N'Kaya                ', N'bkaya@mail.com                                    ', 5896661566, 86)
GO
INSERT [dbo].[Musteri] ([MusteriID], [MusteriAd], [MusteriSoyad], [MusteriEposta], [MusteriTel], [KasiyerDerece]) VALUES (1001005, N'Beyza               ', N'Başaran             ', N'bbasaran@mail.com                                 ', 5051476151, 71)
GO
INSERT [dbo].[Musteri] ([MusteriID], [MusteriAd], [MusteriSoyad], [MusteriEposta], [MusteriTel], [KasiyerDerece]) VALUES (1001006, N'Umut                ', N'Yılmaz              ', N'uyilmaz@mail.com                                  ', 5505107095, 94)
GO
INSERT [dbo].[Musteri] ([MusteriID], [MusteriAd], [MusteriSoyad], [MusteriEposta], [MusteriTel], [KasiyerDerece]) VALUES (1001007, N'Ramazan             ', N'Şahin               ', N'rsahin@mail.com                                   ', 5512333334, 89)
GO
INSERT [dbo].[Musteri] ([MusteriID], [MusteriAd], [MusteriSoyad], [MusteriEposta], [MusteriTel], [KasiyerDerece]) VALUES (1001008, N'Emre                ', N'Yıldız              ', N'eyildiz@mail.com                                  ', 5344478777, 82)
GO
INSERT [dbo].[Musteri] ([MusteriID], [MusteriAd], [MusteriSoyad], [MusteriEposta], [MusteriTel], [KasiyerDerece]) VALUES (1001009, N'Hilal               ', N'Demir               ', N'hdemir@mail.com                                   ', 8502221222, 70)
GO
INSERT [dbo].[Musteri] ([MusteriID], [MusteriAd], [MusteriSoyad], [MusteriEposta], [MusteriTel], [KasiyerDerece]) VALUES (1001010, N'Oğuzhan             ', N'Aydın               ', N'oaydin@mail.com                                   ', 5318549404, 97)
GO
INSERT [dbo].[Odeme] ([SiparisUcret], [OdemeOnline], [OdemeKasa]) VALUES (200.9000, 200.9000, NULL)
GO
INSERT [dbo].[Odeme] ([SiparisUcret], [OdemeOnline], [OdemeKasa]) VALUES (345.9500, 345.9500, NULL)
GO
INSERT [dbo].[Odeme] ([SiparisUcret], [OdemeOnline], [OdemeKasa]) VALUES (49.5500, NULL, 49.5500)
GO
INSERT [dbo].[Odeme] ([SiparisUcret], [OdemeOnline], [OdemeKasa]) VALUES (116.8500, NULL, 116.8500)
GO
INSERT [dbo].[Odeme] ([SiparisUcret], [OdemeOnline], [OdemeKasa]) VALUES (560.9500, 560.9500, NULL)
GO
INSERT [dbo].[Odeme] ([SiparisUcret], [OdemeOnline], [OdemeKasa]) VALUES (497.5000, NULL, 497.5000)
GO
INSERT [dbo].[Odeme] ([SiparisUcret], [OdemeOnline], [OdemeKasa]) VALUES (306.0500, NULL, 306.0500)
GO
INSERT [dbo].[Odeme] ([SiparisUcret], [OdemeOnline], [OdemeKasa]) VALUES (747.0500, NULL, 747.0500)
GO
INSERT [dbo].[Odeme] ([SiparisUcret], [OdemeOnline], [OdemeKasa]) VALUES (335.9000, 335.9000, NULL)
GO
INSERT [dbo].[Odeme] ([SiparisUcret], [OdemeOnline], [OdemeKasa]) VALUES (456.9500, 456.9500, NULL)
GO
INSERT [dbo].[Siparis] ([SiparisNo], [SiparisAdres], [SiparisUcret], [SiparisTarih], [MusteriID], [KuryeID], [UrunFiyat]) VALUES (4248, N'Danişmantli,17, 67380, Ereğli/ Zonguldak, Türkiye                                                                                                                                                                                                                                                           ', 456.9500, CAST(N'2022-04-27' AS Date), 1001001, 2007, 44.9500)
GO
INSERT [dbo].[Siparis] ([SiparisNo], [SiparisAdres], [SiparisUcret], [SiparisTarih], [MusteriID], [KuryeID], [UrunFiyat]) VALUES (32176, N'Tabakhane,23, 16900, Yenişehir/ Bursa, Türkiye                                                                                                                                                                                                                                                              ', 335.9000, CAST(N'2022-01-14' AS Date), 1001006, 2010, 82.9500)
GO
INSERT [dbo].[Siparis] ([SiparisNo], [SiparisAdres], [SiparisUcret], [SiparisTarih], [MusteriID], [KuryeID], [UrunFiyat]) VALUES (5122, N'Çayağzı Köyü,32, 57702, Durağan/ Sinop, Türkiye                                                                                                                                                                                                                                                             ', 747.0500, CAST(N'2022-01-14' AS Date), 1001002, 2006, 40.9500)
GO
INSERT [dbo].[Siparis] ([SiparisNo], [SiparisAdres], [SiparisUcret], [SiparisTarih], [MusteriID], [KuryeID], [UrunFiyat]) VALUES (71208, N'Yaka,33, 9760, Bozdoğan/ Aydın, Türkiye                                                                                                                                                                                                                                                                     ', 306.0500, CAST(N'2022-03-19' AS Date), 1001007, 2005, 80.9500)
GO
INSERT [dbo].[Siparis] ([SiparisNo], [SiparisAdres], [SiparisUcret], [SiparisTarih], [MusteriID], [KuryeID], [UrunFiyat]) VALUES (89784, N'Demir Köyü,33, 24620, Kemaliye/ Erzincan, Türkiye                                                                                                                                                                                                                                                           ', 497.5000, CAST(N'2022-04-01' AS Date), 1001003, 2009, 90.9500)
GO
INSERT [dbo].[Siparis] ([SiparisNo], [SiparisAdres], [SiparisUcret], [SiparisTarih], [MusteriID], [KuryeID], [UrunFiyat]) VALUES (65811, N'Çerçili,34, 19502, Osmancık/ Çorum, Türkiye                                                                                                                                                                                                                                                                 ', 560.9500, CAST(N'2022-02-22' AS Date), 1001008, 2004, 120.9500)
GO
INSERT [dbo].[Siparis] ([SiparisNo], [SiparisAdres], [SiparisUcret], [SiparisTarih], [MusteriID], [KuryeID], [UrunFiyat]) VALUES (82223, N'Çeltiközü Köyü,25, 19902, Kargı/ Çorum, Türkiye                                                                                                                                                                                                                                                             ', 116.8500, CAST(N'2022-01-02' AS Date), 1001004, 2003, 35.9500)
GO
INSERT [dbo].[Siparis] ([SiparisNo], [SiparisAdres], [SiparisUcret], [SiparisTarih], [MusteriID], [KuryeID], [UrunFiyat]) VALUES (8596, N'İnönü Mah.,35, 3911, Sultandağı/ Afyonkarahisar, Türkiye                                                                                                                                                                                                                                                    ', 49.5500, CAST(N'2022-02-17' AS Date), 1001009, 2008, 7.9500)
GO
INSERT [dbo].[Siparis] ([SiparisNo], [SiparisAdres], [SiparisUcret], [SiparisTarih], [MusteriID], [KuryeID], [UrunFiyat]) VALUES (4310, N'Gölyazı,22, 55600, Terme/ Samsun, Türkiye                                                                                                                                                                                                                                                                   ', 345.9500, CAST(N'2022-01-10' AS Date), 1001005, 2002, 77.9500)
GO
INSERT [dbo].[Siparis] ([SiparisNo], [SiparisAdres], [SiparisUcret], [SiparisTarih], [MusteriID], [KuryeID], [UrunFiyat]) VALUES (15643, N'Yalova İzmit Karayolu,1, 77602, Çiftlikköy/ Yalova, Türkiye                                                                                                                                                                                                                                                 ', 200.9000, CAST(N'2022-03-27' AS Date), 1001010, 2001, 65.9500)
GO
INSERT [dbo].[Urun] ([UrunBarkod], [UrunAdi], [UrunStok], [UrunDerece], [UrunFiyat]) VALUES (4172524386, N'Luxe Perfection Diş Macunu                                                                          ', 50, 82, 44.9500)
GO
INSERT [dbo].[Urun] ([UrunBarkod], [UrunAdi], [UrunStok], [UrunDerece], [UrunFiyat]) VALUES (6304544386, N'Nivea Kadın Pump Sprey Fresh Natural Deodorant                                                      ', 100, 75, 82.9500)
GO
INSERT [dbo].[Urun] ([UrunBarkod], [UrunAdi], [UrunStok], [UrunDerece], [UrunFiyat]) VALUES (6935781262, N'Deotak Klasik Krem Deodorant                                                                        ', 50, 61, 40.9500)
GO
INSERT [dbo].[Urun] ([UrunBarkod], [UrunAdi], [UrunStok], [UrunDerece], [UrunFiyat]) VALUES (7909814685, N'Driclor Antiperspirant Roll-on                                                                      ', 200, 86, 80.9500)
GO
INSERT [dbo].[Urun] ([UrunBarkod], [UrunAdi], [UrunStok], [UrunDerece], [UrunFiyat]) VALUES (7324417044, N'Tereson Koltuk Altı Terleme Önleyici                                                                ', 200, 84, 90.9500)
GO
INSERT [dbo].[Urun] ([UrunBarkod], [UrunAdi], [UrunStok], [UrunDerece], [UrunFiyat]) VALUES (3028897491, N'Gillette Venüs Glide Breeze Tıraş Makinesi                                                          ', 100, 71, 120.9500)
GO
INSERT [dbo].[Urun] ([UrunBarkod], [UrunAdi], [UrunStok], [UrunDerece], [UrunFiyat]) VALUES (2197011025, N'Sleepy Natural Soft Ekstra Yumuşak Ped                                                              ', 400, 97, 35.9500)
GO
INSERT [dbo].[Urun] ([UrunBarkod], [UrunAdi], [UrunStok], [UrunDerece], [UrunFiyat]) VALUES (2344447752, N'Oriflame Silk Beauty Clear Tıraş Jeli                                                               ', 80, 82, 7.9500)
GO
INSERT [dbo].[Urun] ([UrunBarkod], [UrunAdi], [UrunStok], [UrunDerece], [UrunFiyat]) VALUES (8718172668, N'Gillette Sensor3 Tıraş Makinesi                                                                     ', 100, 91, 77.9500)
GO
INSERT [dbo].[Urun] ([UrunBarkod], [UrunAdi], [UrunStok], [UrunDerece], [UrunFiyat]) VALUES (5136369369, N'Layes Selülit Karşıtı Doğal At Kılı Selülit Fırçası                                                 ', 100, 67, 65.9500)
GO
ALTER TABLE [dbo].[Siparis]  WITH CHECK ADD  CONSTRAINT [FK_Siparis_Kurye] FOREIGN KEY([KuryeID])
REFERENCES [dbo].[Kurye] ([KuryeID])
GO
ALTER TABLE [dbo].[Siparis] CHECK CONSTRAINT [FK_Siparis_Kurye]
GO
ALTER TABLE [dbo].[Siparis]  WITH CHECK ADD  CONSTRAINT [FK_Siparis_Musteri] FOREIGN KEY([MusteriID])
REFERENCES [dbo].[Musteri] ([MusteriID])
GO
ALTER TABLE [dbo].[Siparis] CHECK CONSTRAINT [FK_Siparis_Musteri]
GO
USE [master]
GO
ALTER DATABASE [BBP104_210111361] SET  READ_WRITE 
GO
