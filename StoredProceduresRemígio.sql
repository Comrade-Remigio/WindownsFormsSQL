
GO
CREATE PROCEDURE CreateEstacao(@NomeEsta��o VARCHAR(255), @N_Linhas int , @N_Plataformas INT)
		AS
		BEGIN

			 INSERT INTO Esta��o VALUES(@NomeEsta��o, @N_Linhas, @N_Plataformas);
			 PRINT 'Sucess'

		END 
GO
/*
-- DROP PROCEDURE CreateEstacao
DECLARE @NomeEsta��o VARCHAR(255) ;
set @NomeEsta��o = 'Aveiro';
DECLARE @N_Linhas INT;
DECLARE @N_Plataformas INT;
SET @N_Plataformas = 2;
SET @N_Linhas = 2;
EXEC CreateEstacao @NomeEsta��o,@N_Linhas,@N_Plataformas*/


GO
CREATE PROCEDURE CreateBalcao(@NomeEsta��o VARCHAR(255), @N_Linhas int , @N_Plataformas INT)
		AS
		BEGIN

			 INSERT INTO Esta��o VALUES(@NomeEsta��o, @N_Linhas, @N_Plataformas);
			 PRINT 'Sucess'

		END 
GO