

CREATE DATABASE p8g10RedeComboios;


CREATE TABLE Estação (
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

CREATE TABLE Balcão (
			Número int NOT NULL,
			NomeEstação VARCHAR(255) NOT NULL,
			FuncId int NOT NULL,
			FOREIGN KEY (NomeEstação) REFERENCES Estação(Nome),
			FOREIGN KEY (FuncId) REFERENCES Funcionário(ID)
);

