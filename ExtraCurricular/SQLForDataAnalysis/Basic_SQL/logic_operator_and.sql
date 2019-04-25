/* AND pode ser usado para acrescentar mais um critério utilizando quallquer um dos logic operator ou arithmetic operator, também é
usado para delimitar intervalo ou seja busca entre 0 AND 1000*/

/* Retorne todos os pedidos onde standard_qty é maior que 1000, o poster_qty seja 0 e o gloss_qty seja 0*/
SELECT *
	FROM orders
  WHERE standard_qty > 1000 AND poster_qty = 0 AND gloss_qty = 0;

/* Selecionar companias que não possuam a letra 'C' no inicio e terminem com 's'*/
SELECT *
	FROM accounts
  WHERE name NOT LIKE 'C%' AND name NOT LIKE '%s';

/* O operador BETWEEN em seus resultados inclui os endpoint sendo assim a busca no exemplo ira
mostra resultados entre 24 e 29 incluido os mesmos*/
SELECT *
 	FROM orders
  WHERE gloss_qty BETWEEN 24 AND 29
  ORDER BY occurred_at;

/* Pegar todas informações sobre quem conectou via organic ou adwords channels, e iniciaram a conta em 2016,
ordenado pelo mais recente para o mais antigo*/
SELECT *
 	FROM web_events
  WHERE channel IN ('organic', 'adwords') AND
        occurred_at BETWEEN '2016-01-01' AND '2017-01-01'
  ORDER BY occurred_at DESC;

