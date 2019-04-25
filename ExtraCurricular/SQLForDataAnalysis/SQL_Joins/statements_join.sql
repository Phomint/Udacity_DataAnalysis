/* O statement JOIN indica qual outra tabela será selecionada e a clausula ON indica qual coluna será usada para o Merge entre
as tabela*/

/* Aqui será mostrado todas colunas das duas tabela em um Merge*/
SELECT *
  FROM orders
  JOIN accounts
  ON orders.account_id = accounts.id;

/* Mostrara apenas as colunas pertencentes a orders*/
SELECT orders.*
  FROM orders
  JOIN accounts
  ON orders.account_id = accounts.id;

/* Desta forma especifica quais campos quer visualizar no merge*/
SELECT accounts.name, orders.occurred_at
  FROM orders
  JOIN accounts
  ON orders.account_id = accounts.id;

/* Sempre que quiser especificar a coluna utilizando JOIN tem que especificar a (tabela.coluna)*/
SELECT orders.standard_qty,
       orders.gloss_qty,
       orders.poster_qty,
       accounts.website,
       accounts.primary_poc
  FROM orders
  JOIN accounts
  ON orders.account_id = accounts.id;

/* Dependendo da informação que precise pode unir mais tabelas*/
SELECT *
  FROM web_events
  JOIN accounts
  ON web_events.account_id = accounts.id
  JOIN orders
  ON orders.account_id = accounts.id;