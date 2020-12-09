CREATE TABLE Tánciskola
(
  IrSz VARCHAR(4) NOT NULL,
  Telepules VARCHAR(20) NOT NULL,
  U_Hsz VARCHAR(30) NOT NULL,
  TI_Id INT NOT NULL,
  TI_neve VARCHAR(30) NOT NULL,
  PRIMARY KEY (TI_Id)
);

CREATE TABLE Verseny
(
  Verseny_Id INT NOT NULL,
  Hely VARCHAR(30) NOT NULL,
  Tipus VARCHAR(20) NOT NULL,
  Stílus VARCHAR(20) NOT NULL,
  PRIMARY KEY (Verseny_Id)
);

CREATE TABLE Egyéni_táncosok
(
  Tanc_Id INT NOT NULL,
  Szül_datum DATE NOT NULL,
  Név VARCHAR(30) NOT NULL,
  Stílus VARCHAR(20) NOT NULL,
  TI_Id INT NOT NULL,
  PRIMARY KEY (Tanc_Id),
  FOREIGN KEY (TI_Id) REFERENCES Tánciskola(TI_Id)
);

CREATE TABLE Tánc_csoportok
(
  Csoport_Id INT NOT NULL,
  Név VARCHAR(30) NOT NULL,
  Stílus VARCHAR(20) NOT NULL,
  TI_Id INT NOT NULL,
  PRIMARY KEY (Csoport_Id),
  FOREIGN KEY (TI_Id) REFERENCES Tánciskola(TI_Id)
);

CREATE TABLE Igazgató
(
  Név VARCHAR(30) NOT NULL,
  Email VARCHAR(30) NOT NULL,
  Telszam VARCHAR(20) NOT NULL,
  I_Id INT NOT NULL,
  TI_Id INT NOT NULL,
  PRIMARY KEY (I_Id),
  FOREIGN KEY (TI_Id) REFERENCES Tánciskola(TI_Id)
);

CREATE TABLE Résztvesz
(
  Indulok_szama INT NOT NULL,
  Verseny_Id INT NOT NULL,
  TI_Id INT NOT NULL,
  FOREIGN KEY (Verseny_Id) REFERENCES Verseny(Verseny_Id),
  FOREIGN KEY (TI_Id) REFERENCES Tánciskola(TI_Id)
);

CREATE TABLE Tánc_csoportok_Tagok
(
  Tagok INT NOT NULL,
  Csoport_Id INT NOT NULL,
  FOREIGN KEY (Csoport_Id) REFERENCES Tánc_csoportok(Csoport_Id)
);
