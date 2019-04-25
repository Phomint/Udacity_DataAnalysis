/* Operador NOT é utilizado com LIKE ou IN, fazendo suas funções serem contra, sendo assim a bucas será total menos os
 que estão na função*/

/* Todas empresas exceto Walmart, Target e Nordstrom*/
SELECT name,
	     primary_poc,
       sales_rep_id
	FROM accounts
  WHERE name NOT IN ('Walmart', 'Target', 'Nordstrom')
  ORDER BY name;

/* Todas que tiveram conexão que não seja organic ou adwords*/
SELECT *
	FROM web_events
    WHERE channel NOT IN ('organic', 'adwords');

/* Todas companias que não começam com a letra 'C'*/
SELECT *
	FROM accounts
    WHERE name NOT LIKE 'C%'
    ORDER BY name;

/* Todas companias que não possuem a palavra 'one' em qualquer posição*/
SELECT *
	FROM accounts
    WHERE name NOT LIKE '%one%';

/* Todas companias que não terminam com a letra 's'*/
SELECT *
	FROM accounts
    WHERE name NOT LIKE '%s'
    ORDER BY name;