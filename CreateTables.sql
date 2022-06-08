

CREATE DATABASE p8g10RedeComboios;


CREATE TABLE Esta��o (
			Nome VARCHAR(255) UNIQUE NOT NULL,
			nLinhas int NOT NULL,
			nPlataformas int NOT NULL,
			PRIMARY KEY (Nome),
);

CREATE TABLE TipoFunc (
			ID int NOT NULL UNIQUE,
			Cargo VARCHAR (50) NOT NULL,
			PRIMARY KEY (ID)
);

CREATE TABLE FuncID (

);

CREATE TABLE Balc�o (
			N�mero int NOT NULL,
			NomeEsta��o VARCHAR(255) NOT NULL,
			FuncId int NOT NULL,
			FOREIGN KEY (NomeEsta��o) REFERENCES Esta��o(Nome),
			FOREIGN KEY (FuncId) REFERENCES Funcion�rio(ID)
);

