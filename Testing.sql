DELETE FROM Esta��o WHERE Nome='Cacia'
select * from Esta��o

select * from Funcion�rio

insert into Balc�o VALUES (2,'Aveiro',10002)
select * from Balc�o

insert into Passageiro VALUES ('12345678','Luis','Ferreira','Silva','919999999','2002-2-2')
select * from Passageiro

insert into Bilhete VALUES ('Aveiro','S�o Bento',1)


insert into ViajaComBilhete VALUES (1,'12345678')

select * from ViajaComBilhete

select * from TipoFunc
DELETE FROM TipoFunc WHERE Cargo='Reviso'

GO
CREATE PROCEDURE latestBilhete (@latestID INT OUTPUT)
AS
		
	set @latestID = (select max(ID) from Bilhete)

GO
DECLARE @latestID int;
EXEC latestBilhete @latestID OUTPUT;
PRINT @latestID
drop PROCEDURE latestBilhete;

insert into Carruagem VALUES (6,1)
SELECT * FROM Carruagem

delete from Carruagem where (Carruagem.N_Carruagem = 1002 and Comboio_ID = 4)	