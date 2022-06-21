
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