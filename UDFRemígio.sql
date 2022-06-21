
GO
CREATE FUNCTION FuncSearchBalcao ( @Nome varchar(255) ) RETURNS TABLE
AS
	RETURN (SELECT * FROM Balcão WHERE CHARINDEX(@Nome, NomeEstação) > 0)

GO

-- drop Function FuncSearchEstacoes
-- select * from FuncSearchBalcao ('a')

GO
CREATE FUNCTION FuncSearchEstacoes ( @Nome varchar(255) ) RETURNS TABLE
AS
	RETURN (SELECT * FROM Estação WHERE CHARINDEX(@Nome, Nome) > 0)

GO
-- drop Function FuncSearchEstacoes
-- select * from FuncSearchEstacoes ('a')

go 

Create FUNCTION ListComboios () RETURNS TABLE
AS 
	RETURN (SELECT ID, Revisor_ID AS Revisor, Condutor_ID AS Condutor, count(Carruagem.Comboio_ID) AS Carruagens FROM (Comboio join Carruagem ON Comboio.ID = Carruagem.Comboio_ID) GROUP BY ID, Revisor_ID, Condutor_ID )
GO

-- drop Function ListComboios
-- select * from ListComboios ()