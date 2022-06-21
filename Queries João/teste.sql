/*SELECT 
    *
FROM
    information_schema.tables;*/

    --SELECT Bilhete.ID INTO @Result FROM Bilhete ORDER BY ID DESC LIMIT 1
    --EXEC AddBilhete '12345678','Ovar' , 'Granja';
    --SELECT * FROM Bilhete;
     --SELECT * FROM ViajaComBilhete;
    --EXEC AddBilhete '12345678','Aveiro' , 'Ovar';
    --INSERT INTO Bilhete VALUES ('Ovar','Granja');
    --EXEC AddNewClient '87654321','Mariana','Rebelo','Costa','936083800','1995-08-03';
    -- EXEC UpdateBilhete '87654321' , 'Aveiro' , 'São Bento' , 2; 
    --SELECT * FROM ViajaComBilhete;
    --EXEC AddBilhete '87654321','Aveiro' , 'Ovar';
    --EXEC CreateFunc 10001 ,'cao';
    --SELECT * FROM TipoFunc;
    --AddNewEmployee ( @id int , @fname VARCHAR(50), @mname VARCHAR(50) , @lname VARCHAR(50) , @salario int , @data_nascimento Date, @num_tel VARCHAR(9) , @morada VARCHAR(250) , @funcid int) 
   --EXEC AddNewEmployee 3500, 'Roberto' , 'Garcia' , 'Luiz' , 650 , '1970-03-11', '924559432' , 'Rua dos perdidos' , 1001;
   --SELECT * FROM Funcionário;
   --EXEC RemoveEmployee 3500;
   --SELECT * FROM Funcionário
   --INSERT INTO Comboio VALUES(10001,10002);
   --SELECT * FROM Comboio
   --EXEC AddCarruagem 1 ,400
   --SELECT * FROM Carruagem
   --EXEC RemoveCarruagem 1 , 1000;
   --EXEC AddComboio  10001 , 10002 
   --SELECT * From Funcionário
  -- SELECT * FROM TipoFunc
  --EXEC RemoveComboio 2
  --EXEC UpdateComboio 1 , null , null
  --INSERT INTO Comboio VALUES(10001 , 10002)
  --INSERT INTO Carruagem VALUES(2,300)
  --SELECT * FROM (Comboio 
 -- JOIN Carruagem ON Comboio.ID = Carruagem.Comboio_ID)
  --SELECT * FROM Carruagem
  --SELECT * FROM Comboio
  SELECT Comboio.ID ,COUNT(*)[NoOfCarruagens]
FROM (Comboio 
  JOIN Carruagem ON Comboio.ID = Carruagem.Comboio_ID)
GROUP by Comboio.ID ;
    
   
