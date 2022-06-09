


-- INSERT ESTAÇÕES

INSERT INTO Estação VALUES ('São Bento',6,12);
INSERT INTO Estação VALUES ('Espinho',2,1);
INSERT INTO Estação VALUES ('Granja',2,2);
INSERT INTO Estação VALUES ('Ovar',4,8);
INSERT INTO Estação VALUES ('Aveiro',5,10);

-- SELECT * FROM Estação;

INSERT TipoFunc VALUES (10322, 'Secretário' );
INSERT TipoFunc VALUES (10001, 'Condutor' );
INSERT TipoFunc VALUES (10002, 'Revisor' );

-- SELECT * FROM TipoFunc;

INSERT Funcionário VALUES (10001,'Bruno Peterson',1200,'1980-2-2',918833999,'Aveiro rua tal e coiso',10322);
INSERT Funcionário VALUES (10002,'Marcus Teles',1500,'1980-2-2',918833779,'Aveiro rua coiso e tal',10001);
INSERT Funcionário VALUES (10003,'Rui Luis',1500,'1980-2-2',918835999,'Porto alameda do bairro',10002);

-- SELECT * FROM Funcionário;
-- SELECT * FROM Funcionário, TipoFunc WHERE TipoFunc.ID = FuncID