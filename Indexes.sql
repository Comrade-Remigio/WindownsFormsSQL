
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
-- Para pesquisa de balcoes pelo nome de estação
CREATE NONCLUSTERED INDEX BalcaoPorEstação on Balcão (NomeEstação)
-- drop index BalcaoPorEstação on Balcão
go
-- Para saber que bilhetes tem certa partida e chegada
CREATE INDEX BilhetePercurso on Bilhete (EstaçãoPartida,EstaçãoChegada)
go
-- Pesquisar Clientes por Nome
CREATE INDEX idxPassegeiroNome on Passageiro (FName,MName,LName)
go
-- Pesquisar Funcionários por Nome
CREATE INDEX idxFuncionáriosNome on Funcionário (FName,MName,LName)
go
-- Pesquisar uma carruagem por comboio

CREATE INDEX idxCarruagembyComboio on Carruagem (Comboio_ID)
go											  

-- Para Sabes que trajetos passam em especifica paragem
CREATE NONCLUSTERED INDEX FazParagemPorEstação ON FazParagem (Estação);
go
-- Para pesquisa de horarios de um certo trajeto
Create INDEX HorarioTrajeto on HorárioTrajeto (TrajetoID);
go							