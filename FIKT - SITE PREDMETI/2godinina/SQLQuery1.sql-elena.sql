CREATE TABLE Klienti(
KlientID int PRIMARY KEY NOT NULL,
Ime VARCHAR(20),
Prezime VARCHAR (20),
Grad VARCHAR(15),
Telefon VARCHAR(10)
)
SELECT*FROM Klienti;

INSERT INTO	Klienti(KlientID,Ime,Prezime,Grad,Telefon)
VALUES(11,'Ana','Stojkovska','Bitola','070661446'),
(24,'Dimitra','Dododvska','Bitola','070221564'),
(32,'Stefanija','Kostovska','Bitola','070221564'),
(43,'Katerina','Talevska','Bitola','07087151'),
(53,'Sara','Jankovska','Bitola','070441860'),
(63,'Vesna','Ristevska','Skopje','071546810'),
(72,'Elena','Darkovska','Bitola','070876109'),
(83,'Marija','Korlevska','Bitola','070382121'),
(93,'Sara','Talevska','Skopje','071779576'),
(12,'Natalija','Atanasovska','Bitola','070325518');
--SELECT*FROM Klienti;

CREATE TABLE Frizersko_studio(
FrizerskostudioID int PRIMARY KEY NOT NULL,
Frizerski_Salon VARCHAR(10),
Lokacija VARCHAR(15)
)
SELECT*FROM Frizersko_studio;
 
 INSERT INTO Frizesko_studio(FrizerskostudioID,Frizerski_salon,Lokacija)
 VALUES(1,'Karmen','Blaze Rogozinarot'),
 (2,'Body M','Solunska'),
 (3,'Revolucion','Solunska'),
 (4,'Elit','Blaze Rogozinarot'),
 (5,'Art Feshn','Bulevar 8-mi Septemvri');
 SELECT*FROM Frizesko_studio;

 CREATE TABLE Termini za zakazuvaje(
 TerminiID int PRIMARY KEY NOT NULL,
 KlientID int PRIMARY KEY NOT NULL,
 Data DATE,
 Usluga VARCHAR (15),
 Cena INT
 )
 SELECT*FROM Termini za zakazuvaje;

 INSERT INTO Termini za zakazuvanje(TerminiID,KlientiID,Data,Usluga,Cena)
 VALUES(2023,11,'2023-14-06','Strizenje','500'),
 (2022,43,'2023-22-07','Farbaje','1500'),
 (203,32,'2023-04-04','Feniranje','400'),
 (20201,72,'2023-17-01','Satiranje','1500'),
 (20205,12,'2023-13-03','Strizenje','500'),
 (20206,83,'2023-26-06','Farbaje','1500'),
 (20206,93,'2023-25-03','Strizenje','500'),
 (20209,24,'2023-03-03','Satiranje','1500'),
 (20204,43,'2023-20-06','Strizeje','500'),
 (2020,53,'2023-21-06','Srizenje','500'),
 (2021,63,'2023-10-03','Farbanje','1500')
 SELECT*FROM Termini za zakazuvanje;