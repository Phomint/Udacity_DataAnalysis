/* Operador OR torna um retorno verdadeiro sendo uma das condiações verdades e pode ser combinado com parenteses
para que o bloco possua uma resposta verdadeira*/

/* Procurar pedidos em que gloss_qty ou poster_qty são maiores que 4000, exibir apenas o id*/
SELECT id
	FROM orders
  WHERE gloss_qty >= 4000 OR poster_qty >= 4000;

/* Query que retorna os valores dos pedidos onde standard_qty for igual a 0 e que gloss_qty ou poster_qty seja acima de 1000*/
SELECT *
	FROM orders
	WHERE standard_qty = 0 AND (gloss_qty > 1000 OR poster_qty > 1000);

/* Encontrar todoas companias com nome que inicie com 'C' ou 'W', e o nome do contato contenha 'ana' ou 'Ana', mas não contenha 'eana'*/
 SELECT *
 	FROM accounts
  WHERE (name LIKE 'C%' OR name LIKE 'W%') AND
    (primary_poc LIKE '%ana%' OR primary_poc LIKE '%Ana%') AND
     primary_poc NOT LIKE '%eana%';