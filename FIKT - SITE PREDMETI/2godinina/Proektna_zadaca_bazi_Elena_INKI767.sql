--CREATE TABLE Klienti(
--KlientID int PRIMARY KEY NOT NULL,
--Ime VARCHAR(20),
--Prezime VARCHAR (20),
--Grad VARCHAR(15),
--Telefon VARCHAR(10)
--)
--select * from Klienti;
--INSERT INTO	Klienti(KlientID,Ime,Prezime,Grad,Telefon)
--VALUES(11,'Ana','Stojkovska','Bitola','070661446'),
--(24,'Dimitra','Dododvska','Bitola','070221564'),
--(32,'Stefanija','Kostovska','Bitola','070221564'),
--(43,'Katerina','Talevska','Bitola','07087151'),
--(53,'Sara','Jankovska','Bitola','070441860'),
--(63,'Vesna','Ristevska','Skopje','071546810'),
--(72,'Elena','Darkovska','Bitola','070876109'),
--(83,'Marija','Korlevska','Bitola','070382121'),
--(93,'Sara','Talevska','Skopje','071779576'),
--(12,'Natalija','Atanasovska','Bitola','070325518');
--select * from Klienti;

--CREATE TABLE Frizersko_studio(
--FrizerskostudioID int PRIMARY KEY NOT NULL,
--Frizerski_Salon VARCHAR(10),
--Lokacija VARCHAR(15)
--)
--SELECT*FROM Frizersko_studio;

--INSERT INTO Frizersko_studio(FrizerskostudioID,Frizerski_salon,Lokacija)
-- VALUES(1,'Karmen','Blaze'),
-- (2,'Body_M','Solunska'),
-- (3,'Revolucion','Solunska'),
-- (4,'Elit','Blaze'),
-- (5,'Art_Feshn','Bulevar');
 --SELECT*FROM Frizersko_studio;

 -- CREATE TABLE Termini_za_zakazuvaje(
 --TerminiID int PRIMARY KEY NOT NULL,
 --KlientID int foreign key references Klienti(KlientID) NOT NULL,
 --Data DATE,
 --Usluga VARCHAR (15),
 --Cena INT
 --)
 --SELECT*FROM Termini_za_zakazuvaje;

 
-- INSERT INTO Termini_za_zakazuvaje(TerminiID,KlientID,Data,Usluga,Cena)
-- VALUES
-- (2028,43,'2023-07-22','Farbaje',1500),
-- (2031,32,'2023-04-04','Feniranje',400),
-- (20201,72,'2023-01-07','Satiranje',1500),
-- (20205,12,'2023-03-15','Strizenje',500),
-- (20206,83,'2023-06-26','Farbaje',1500),
-- (20209,24,'2023-03-03','Satiranje',1500),
-- (20204,43,'2023-06-20','Strizeje',500),
-- (2020,53,'2023-06-21','Srizenje',500),
-- (2021,63,'2023-03-10','Farbanje',1500)

--ALTER TABLE Termini_za_zakazuvaje with nocheck
--ADD FOREIGN KEY (KlientID) REFERENCES Klienti(KlientID);
 --SELECT*FROM Termini_za_zakazuvaje;


 --1. Da se kreira prashalnik shto ke gi prikazi klientite od Skopje koi se zakazale vo salon Art_feshn.
 --Select Klienti.Ime, Klienti.Prezime
 --from Klienti, Frizersko_studio, Termini_za_zakazuvaje
 --where Klienti.KlientID =  Termini_za_zakazuvaje.KlientID  and Frizersko_studio.Frizerski_salon = 'Art_Feshn' and Klienti.Grad = 'Skopje';


 --2. Kreiraj prasalnik koj ke gi prikazi iminjata na klientite koi se farbale
 --Select Klienti.Ime
 --from Klienti, Frizersko_studio, Termini_za_zakazuvaje
 --where Klienti.KlientID =  Termini_za_zakazuvaje.KlientID  and Termini_za_zakazuvaje.Usluga = 'Farbaje';

-- 3.Kreiraj prasalnik shto gi prikazuva iminjata na klientite koi se farbale posle 2023-03-13

 --Select Klienti.Ime
 --from Klienti, Frizersko_studio, Termini_za_zakazuvaje
 --where Klienti.KlientID =  Termini_za_zakazuvaje.KlientID  and Termini_za_zakazuvaje.Usluga = 'Farbaje' and Termini_za_zakazuvaje.Data > '2023-03-13';