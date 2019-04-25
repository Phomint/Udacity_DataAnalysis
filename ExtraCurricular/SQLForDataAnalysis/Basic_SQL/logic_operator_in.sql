/* Operador IN é muito usado como o (=) porem podendo fazer a buscar por mais do que um valor em partigular,
fara uma busca dos valores delimitados, ou em caso de strings ele mostrara as que entram na requisição,
OR também pode fazer estas buscar porém IN é a forma mais limpa e clara de faze-lo*/
SELECT name,
	     primary_poc,
       sales_rep_id
	FROM accounts
  WHERE name IN ('Walmart', 'Target', 'Nordstrom');

SELECT *
 	FROM web_events
  WHERE channel IN ('organic', 'adwords');

