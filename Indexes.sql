
-- NONCLUSTERED INDEXES
go
-- Para a pesquisa de cliente a partir dos bilhetes que tem 
CREATE NONCLUSTERED INDEX ID_BilheteViagens on ViajaComBilhete (ID_Bilhete);
go
-- Para a pesquisa de Bilhetes a partir dos Passageiros 
CREATE NONCLUSTERED INDEX CC_BilheteViagem on ViajaComBilhete (Num_CC);
go
-- Para a pesquisa de paragens por Trajecto
CREATE NONCLUSTERED INDEX FazParagemPorTrajeto ON FazParagem (TrajetoID);
--drop index FazParagemPorTrajeto on FazParagem
go
-- Para pesquisa de balcoes pelo nome de esta��o
CREATE NONCLUSTERED INDEX BalcaoPorEsta��o on Balc�o (NomeEsta��o)
-- drop index BalcaoPorEsta��o on Balc�o
go
-- Para saber que bilhetes tem certa partida e chegada
CREATE INDEX BilhetePercurso on Bilhete (Esta��oPartida,Esta��oChegada)
go
-- Pesquisar Clientes por Nome
CREATE INDEX idxPassegeiroNome on Passageiro (FName,MName,LName)
go
-- Pesquisar Funcion�rios por Nome
CREATE INDEX idxFuncion�riosNome on Funcion�rio (FName,MName,LName)
go
-- Pesquisar uma carruagem por comboio

CREATE INDEX idxCarruagembyComboio on Carruagem (Comboio_ID)
go											  

-- Para Sabes que trajetos passam em especifica paragem
CREATE NONCLUSTERED INDEX FazParagemPorEsta��o ON FazParagem (Esta��o);
go
-- Para pesquisa de horarios de um certo trajeto
Create INDEX HorarioTrajeto on Hor�rioTrajeto (TrajetoID);
go							