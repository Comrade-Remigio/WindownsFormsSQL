
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
CREATE PROCEDURE CreateBalcao(@NomeEsta��o VARCHAR(255), @N_Balcao int , @N_Funcionario INT)
		AS
		BEGIN

			 INSERT INTO Balc�o VALUES(@N_Balcao, @NomeEsta��o, @N_Funcionario);
			 PRINT 'Sucess'

		END 
GO

-- DROP PROCEDURE CreateBalcao

GO
CREATE PROCEDURE CreateComboio(@Revisor int , @Condutor INT)
		AS
		BEGIN

			 INSERT INTO Comboio VALUES(@Revisor, @Condutor);
			 PRINT 'Sucess'

		END 
GO


/*DECLARE @Revisor INT;
DECLARE @Condutor INT;
SET @Condutor = null;
SET @Revisor = null;
exec CreateComboio @Revisor,@Condutor 
select * from Comboio
select * from Funcion�rio
DELETE FROM Comboio where id=5
DROP PROCEDURE CreateComboio */


GO
CREATE PROCEDURE alterComboio(@ID Int,@Revisor int , @Condutor INT)
AS
	BEGIN

			DECLARE @Revisor_old AS int;  
			DECLARE @Condutor_old AS int;  

			SELECT @Revisor_old = Revisor_ID, @Condutor_old = Condutor_ID
			FROM Comboio
			WHERE Comboio.ID = @ID;

	
			UPDATE Comboio SET Revisor_ID = @Revisor WHERE ID = @ID;
			PRINT 'Revisor updated with success '  

			UPDATE Comboio SET Condutor_ID = @Condutor  WHERE ID = @ID;
				PRINT 'Condutor updated with success '  
	
		 


	END
go
-- drop procedure alterComboio
/*DECLARE @Revisor INT;
DECLARE @Condutor INT;
DECLARE @ID INT;
SET @Condutor = 10002;
SET @ID = 6;
SET @Revisor = 10002;
exec alterComboio @ID, @Revisor,@Condutor

select * from Comboio
*/
