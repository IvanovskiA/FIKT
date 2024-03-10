--CREATE TABLE Korisnici(
--KorisnikID int PRIMARY KEY NOT NULL,
--Ime VARCHAR(20),
--Prezime VARCHAR(20),
--DatumRaganje VARCHAR (15) ,
--Grad VARCHAR(10)
--)
--SELECT *FROM Korisnici;
--INSEERT  INT Korisnici(KorisnikID,Ime,Prezime,DatumRaganje,Grad)
--VALUES(23345,'Aleksandar','Stefanovski','14-Jul-71','Ohrid'),
--(23412,'Jasmina','Anastasievska','12-Sep-87','Bitola'),
--(34153,'Dejan','Ivanovski','12-Oct-80','Skopje'),
--(44145,'Nikola','Tanevski','25-Sep-68','Bitola'),
--(51231,'Stefanka','Ristevska','30-Oct-79','Bitola'),
--(61314,'Zaklina','Lazarevska','21-Jan-61','Ohrid');
SELECT * FROM Korisnici;

--CREATE TABLE Banki(
--BankaID int PRIMARY KEY NOT NULL,
--Ime VARCHAR (20),
--)
-- SELECT *FROM Banki;
--INSERT INT Banki(BankaID,Ime)
--VALUES(1,'NLB Tutunska Banka AD Skopje'),
--(2,'Halk Bnaka AD Skopje'),
--(3,'Sparkase Banka Makedonija AD Skpje'),
--(4,'Komercijalna Bnaka AD Skopje'),
--(5,'Ohricka Banka AD Skopje'),
--6,'Stopanska Bnaka AD Skopje');
SELECT *FROM Banki;

--CREATE TABLE Krediti(
--KorsnikID INT PRIMARY KEY NOT NULL,
--BankaID INT FOREIGN KEY REFERENCES Banki(BankaID),
--DatumRaganje VARCHAR (15),
--Suma INT ,
--Tip int ,
SELECT *FROM Krediti;
--INSERT INT Krediti(KorisnikID,BankaID,DatumNaZemanje,Suma,Tip)
--(23345,1,'21-Jan-05','600000','Potrosuvacki'),
--(23412,4'30-Jan-07','900000','Stanben'),
--(34153,3'15-Mar-11','600000','Potrosuvacki'),
--(44145,6'15-Feb-03','1000000','	Stanben'),
--(51231,4'23-Feb-15','900000','Stanben'),
--(44145,2'22-Mar-14','30000','Potrosuvacki'),
--(61314,1'17-Jan-11','500000','Hipotekaren');
SELECT * FROM Krediti;
  
SELECT BANKI.Ime,BANKI.Korisnici
FROM BANKI,Korisnici
WHERE BANKI.BankaID=Banka.Korisnici AND BANKA.IME='Makedonija' 


