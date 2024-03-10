---CREATE TABLE Gosti(
--GostinID int PRIMARY KEY NOT NULL,
--Ime VARCHAR(20),
--Prezime VARCHAR(20),
--Grad VARCHAR(10),
--Telefon VARCHAR(15)
--)
--SELECT * FROM Gosti;
--INSERT INTO Gosti(GostinID,Ime,Prezime,Grad,Telefon)
--VALUES (124,'Sara','Stefanovska','Bitola','072230895'),
--(135,'David','Ristevski','Skopje','078124255'),
--(154,'Jovan','Lazarevski','Skopje','071528402'),
--(234,'Marija','Ivanovska','Bitola','070360147'),
--(252,'Teodor','Stojchevski','Skopje','071291450'),
--(315,'Boris','Vanchevski','Veles','075560980');
--SELECT * FROM Gosti;

--CREATE TABLE Termini(
--TerminID INT PRIMARY KEY NOT NULL,
--GostinID INT FOREIGN KEY REFERENCES Gosti(GostinID),
--HotelID INT FOREIGN KEY REFERENCES HOTELI(HotelID),
--VidNaSoba VARCHAR (25),
--DATAOD DATE,
--DATADO DATE,
--CenaVeceher INT

--)
--SELECT * FROM Termini;
--INSERT INTO Termini(TerminID,GostinID,HotelID,VidNaSoba,DATAOD,DATADO,CenaVeceher)
--VALUES (20512,124,3,'dvokrevetna','2021-03-11','2021-03-14',2400),
--(23620,154,4,'trokrevetna','2021-02-05','2021-02-07',3300),
--(20651,252,6,'dvokrevetna','2021-03-19','2021-03-22',6000),
--(21300,234,2,'cetirikrevetna','2021-04-12','2021-04-15',4800),
--(21087,252,1,'dvokrevetna','2021-06-20','2021-06-27',2600),
--(22014,135,5,'dvokrevetna','2021-02-24','2021-02-28',6000),
--(11452,315,4,'cetirikrevetna','2021-02-11','2021-02-15',4000),
--(20365,154,2,'dvokrevetna','2021-05-29','2021-06-03',2400),
--(10203,135,3,'dvokrevetna','2021-06-12','2021-06-18',2400),
--(28012,315,5,'trokrevetna','2021-04-22','2021-04-25',7500);
--SELECT * FROM Termini;

--SELECT HOTELI.Ime,HOTELI.Sobi
--FROM HOTELI,Termini
--WHERE HOTELI.HotelID= Termini.HotelID AND HOTELI.Lokacija ='Mavrovo' AND Termini.DATAOD > '2021-01-31';
----SELECT * FROM HOTELI;

--SELECT Gosti.Ime, Gosti.Prezime
--FROM HOTELI, Gosti, Termini
--WHERE Gosti.GostinID = Termini.GostinID AND HOTELI.HotelID = Termini.HotelID AND HOTELI.Sobi > 50;
--select * from Termini ; 


--SELECT HOTELI.Ime, Gosti.Ime, Gosti.Prezime
--FROM Termini, HOTELI, Gosti
--WHERE Gosti.GostinID = Termini.GostinID AND HOTELI.HotelID = Termini.HotelID AND Termini.VidNaSoba = 'dvokrevetna';

--SELECT Gosti.Ime , Gosti.Prezime , HOTELI.Ime, Termini.CenaVeceher
--FROM HOTELI, Gosti, Termini
--WHERE Gosti.GostinID = Termini.GostinID AND HOTELI.HotelID = Termini.HotelID AND Termini.CenaVeceher < (SELECT AVG (CenaVeceher) FROM Termini);

--SELECT Gosti.Ime, Gosti.Prezime, HOTELI.Lokacija
--FROM Gosti, HOTELI, Termini
--WHERE Gosti.GostinID = Termini.GostinID AND HOTELI.HotelID = Termini.HotelID AND Termini.DATAOD >= '2021-01-01' AND  Termini.DATADO <'2021-03-01';