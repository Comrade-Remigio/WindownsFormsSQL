

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

CREATE TABLE Funcionário (
			ID int UNIQUE NOT NULL,
			Nome VARCHAR(250) not null,
			Salário int not null,
			Data_Nascimento Date not null,
			N_Telemóvel VARCHAR(9) NOT NULL,
			Morada VARCHAR(250) NOT NULL,
			FuncID int,
			FOREIGN KEY (FuncID) REFERENCES TipoFunc(ID) ON DELETE CASCADE,
			CONSTRAINT chk_phone CHECK (N_Telemóvel like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
			PRIMARY KEY (ID)

);

CREATE TABLE Balcão (
			Número int NOT NULL,
			NomeEstação VARCHAR(255) NOT NULL,
			FuncId int NOT NULL,
			FOREIGN KEY (NomeEstação) REFERENCES Estação(Nome) ON DELETE CASCADE,
			FOREIGN KEY (FuncId) REFERENCES Funcionário(ID) ON DELETE CASCADE
);

CREATE TABLE Bilhete (

			ID INT IDENTITY(1,1) NOT NULL,
			EstaçãoPartida VARCHAR(255) NOT NULL,
			EstaçãoChegada VARCHAR(255) NOT NULL,
			N_Passageiros INT NOT NULL,
			PRIMARY KEY (ID),
			FOREIGN KEY (EstaçãoPartida) REFERENCES Estação(Nome) ON DELETE  NO ACTION,
			FOREIGN KEY (EstaçãoChegada) REFERENCES Estação(Nome) ON DELETE  NO ACTION,
			CONSTRAINT checkTraj  check (EstaçãoPartida != EstaçãoChegada),
			CONSTRAINT CheckPass  check (N_Passageiros >= 0) ,


);


CREATE TABLE Passageiro (
			
			Num_CC VARCHAR(8) NOT NULL,
			Nome VARCHAR(250) NOT NULL,
			Num_Tel VARCHAR(9),
			Data_Nascimento Date not null,

			CONSTRAINT chk_phonePass CHECK (Num_Tel like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
			CONSTRAINT chk_CC CHECK (Num_CC like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),

			PRIMARY KEY (Num_CC),

);


CREATE TABLE ViajaComBilhete (
	
			ID_Bilhete  INT NOT NULL,
			NUM_CC VARCHAR (8) NOT NULL,
			
			PRIMARY KEY (NUM_CC,ID_Bilhete),
			FOREIGN KEY (NUM_CC) REFERENCES Passageiro(Num_CC) ON DELETE CASCADE,
			FOREIGN KEY (ID_Bilhete) REFERENCES Bilhete(ID) ON DELETE CASCADE,

);

CREATE TABLE Comboio (
			ID int IDENTITY(1,1) not null,
			Condutor_ID int NOT NULL,
			Revisor_ID int NOT NULL,

			PRIMARY KEY (ID),

			FOREIGN KEY (Condutor_ID) REFERENCES Funcionário(ID),
			FOREIGN KEY (Revisor_ID) REFERENCES Funcionário(ID),

);

CREATE TABLE Carruagem (
			Comboio_ID int Not null,
			N_Carruagem int not null,
			N_lugares int not null,
			PRIMARY KEY (Comboio_ID, N_Carruagem),
			FOREIGN KEY (Comboio_ID) REFERENCES Comboio(ID)
);

CREATE TABLE Trajeto (
			
			ID int identity(1000,1) not null ,
			EstaçãoPartida VARCHAR(255) NOT NULL,
			EstaçãoChegada VARCHAR(255) NOT NULL,
			PRIMARY KEY (ID),
			FOREIGN KEY (EstaçãoPartida) REFERENCES Estação(Nome) ON DELETE  NO ACTION,
			FOREIGN KEY (EstaçãoChegada) REFERENCES Estação(Nome) ON DELETE  NO ACTION,
			
			CONSTRAINT check_Traj  check (EstaçãoPartida != EstaçãoChegada),


);


CREATE TABLE FazParagem(
			TrajetoID int not null,
			Estação VARCHAR(255) NOT NULL,
			PRIMARY KEY (TrajetoID,Estação),
			FOREIGN KEY (TrajetoID) References Trajeto(ID) ON DELETE CASCADE, 
			FOREIGN KEY (Estação) REFERENCES Estação(Nome) ON DELETE CASCADE,
);



CREATE TABLE HorárioTrajeto (

			TrajetoID int not null,
			HoraSaida DATETIME NOT NULL,
			HoraChegada DATETIME NOT NULL,
			PRIMARY KEY (TrajetoID,HoraSaida,HoraChegada),
			FOREIGN KEY (TrajetoID) REFERENCES Trajeto(ID) on DELETE CASCADE
);

CREATE TABLE ComboioFazTrajeto (
			Comboio_ID  int Not null,
			TrajetoID int not null,
			PRIMARY KEY (Comboio_ID,TrajetoID),
			FOREIGN KEY (Comboio_ID) REFERENCES Comboio(ID) ON DELETE CASCADE,
			FOREIGN KEY (TrajetoID) References Trajeto(ID) ON DELETE CASCADE, 

);

