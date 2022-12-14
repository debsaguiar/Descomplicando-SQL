-- Databricks notebook source
SELECT * FROM silver_olist.pedido

-- selecione tudo do banco de dados silver_olist da tabela pedido

-- COMMAND ----------

SELECT idPedido, 
       descSituacao
FROM  silver_olist.pedido
-- LIMIT delimita quantas linhas aparecerão no resultado

-- COMMAND ----------

SELECT *,
       DATEDIFF(dtEstimativaEntrega, dtEntregue) AS diasDiferenca
FROM silver_olist.pedido

-- o AS é opcional, mas ajuda na visualização e entender o código

-- COMMAND ----------


