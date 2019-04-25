/*Coluna Derivada, são manipulações de colunas existente para criar uma coluna calculada ou computada*/
SELECT account_id,
       occurred_at,
       standard_qty,
       gloss_qty,
       poster_qty,
       gloss_qty + poster_qty
  FROM orders;

/*Quando calculada a coluna aparece com nome estranho então pode se usar AS para definir seu nome*/
SELECT account_id,
       occurred_at,
       standard_qty,
       gloss_qty,
       poster_qty,
       gloss_qty + poster_qty AS nonstandard_qty
  FROM orders;

/*Aqui foi feito o calculo para achar a porcentagem e nomeado por std_percent*/
SELECT id, (standard_amt_usd/total_amt_usd)*100 AS std_percent, total_amt_usd
  FROM orders
  LIMIT 10;