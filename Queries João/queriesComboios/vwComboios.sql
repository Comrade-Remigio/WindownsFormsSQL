  SELECT Comboio.ID , Comboio.Condutor_ID, Comboio.Revisor_ID ,   COUNT(*)[NoOfCarruagens]
FROM (Comboio 
  JOIN Carruagem ON Comboio.ID = Carruagem.Comboio_ID)
GROUP by Comboio.ID , Comboio.Condutor_ID , Comboio.Revisor_ID ;
--fazer count carruagens
--(Comboio JOIN Carruagem ON Comboio.ID = Carruagem.Comboio_ID) AS countCarruagem