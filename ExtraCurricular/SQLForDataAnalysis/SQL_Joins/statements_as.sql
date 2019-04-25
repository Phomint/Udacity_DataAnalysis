/* O statement AS é usado para facilitar e limpar o código podendo abreviar as chamadas da tabela*/

/* Usando o exemplo referido no statements_join.sql*/
SELECT o.standard_qty,
       o.gloss_qty,
       o.poster_qty,
       a.website,
       a.primary_poc
  FROM orders AS o
  JOIN accounts AS a
  ON o.account_id = a.id;

/* Pode tambem abreviar algumas chamada de uso como arithmetic_operators*/
SELECT o.standard_qty - o.gloss_qty AS rest_qty, a.primary_poc
  FROM orders AS o
  JOIN accounts AS a
  ON o.account_id = a.id;

/* Mas frequentemente aparecem apenas com um espaço e a abreviação, produz o mesmo resultado do AS*/

/* Usando o exemplo referido no statements_join.sql*/
SELECT o.standard_qty,
       o.gloss_qty,
       o.poster_qty,
       a.website,
       a.primary_poc
  FROM orders o
  JOIN accounts a
  ON o.account_id = a.id;

/* Pode tambem abreviar algumas chamada de uso como arithmetic_operators*/
SELECT o.standard_qty - o.gloss_qty rest_qty, a.primary_poc
  FROM orders o
  JOIN accounts a
  ON o.account_id = a.id;

/* Outros exemplos*/
SELECT a.primary_poc,
       a.name,
       web.occurred_at,
       web.channel
  FROM web_events AS web
  JOIN accounts AS a
  ON web.account_id = a.id
  WHERE a.name = 'Walmart';

SELECT r.name region, s.name rep, a.name accounts
  FROM accounts a
  JOIN sales_reps s
  ON a.sales_rep_id = s.id
  JOIN region r
  ON s.region_id = r.id
  ORDER BY a.name;

SELECT r.name region, a.name account, o.total_amt_usd/(o.total + 0.01) unit_price
  FROM region r
  JOIN sales_reps s
  ON s.region_id = r.id
  JOIN accounts a
  ON a.sales_rep_id = s.id
  JOIN orders o
  ON o.account_id = a.id;