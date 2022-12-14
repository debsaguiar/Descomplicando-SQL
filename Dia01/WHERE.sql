-- Databricks notebook source
SELECT * 
FROM silver_olist.pedido
WHERE descSituacao = 'canceled'
-- LIMIT 100

-- COMMAND ----------

SELECT * 
FROM silver_olist.pedido
WHERE descSituacao = 'shipped'
AND year(dtPedido) = '2018'

-- COMMAND ----------

SELECT * 
FROM silver_olist.pedido
WHERE (descSituacao = 'shipped' OR descSituacao = 'canceled')
AND year(dtPedido) = '2018'

-- colocando entre parênteses eu primeiro procuro por uma ou outra situação e depois se ela está no ano de 2018


-- COMMAND ----------

SELECT * 
FROM silver_olist.pedido
WHERE descSituacao IN ('shipped','canceled')
AND year(dtPedido) = '2018'

-- COMMAND ----------

SELECT * 
FROM silver_olist.pedido
WHERE descSituacao IN ('shipped','canceled')
AND year(dtPedido) = '2018'
AND datediff(dtEstimativaEntrega, dtAprovado) > 30
