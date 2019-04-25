/*ORDER BY é um statements que ordena a visualização de acordo com a coluna a ser ordenada,
por padrão ORDER BY vai ordenar de 'a' a 'z' ou menor para o maior ou do mais antigo para o mais recente,
*/
SELECT *
  FROM orders
  ORDER BY occurred_at
  LIMIT 1000;

/*Para inverter a ordem usa o statements DESC*/
SELECT *
  FROM orders
  ORDER BY occurred_at DESC
  LIMIT 1000;

/*Podemos ordenar por mais de um coluna*/
SELECT account_id, total_amt_usd
  FROM orders
  ORDER BY total_amt_usd, account_id;

/*Foi classificado primeiro total_amt_usd depois a classificação por account_id*/
SELECT account_id, total_amt_usd
  FROM orders
  ORDER BY  total_amt_usd DESC, account_id;

/*Todos os account_id são agrupados e em segui os total_amt_usd aparecem do maior valor para o menor*/
SELECT account_id, total_amt_usd
  FROM orders
  ORDER BY account_id, total_amt_usd DESC;