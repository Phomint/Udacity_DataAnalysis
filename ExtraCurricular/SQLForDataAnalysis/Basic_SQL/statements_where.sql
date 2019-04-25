/*O statement WHERE nos mostra subsets das tabelas baseado nas condições, como ( >, <, >=, <=, =, != )*/
SELECT *
  FROM orders
  WHERE account_id = 4251
  ORDER BY occurred_at
  LIMIT 1000;

/*wHERE também pode ser usado com condições não númericas podendo usar ( = ) e ( != )*/
SELECT *
  FROM accounts
  WHERE name = 'United Technologies';