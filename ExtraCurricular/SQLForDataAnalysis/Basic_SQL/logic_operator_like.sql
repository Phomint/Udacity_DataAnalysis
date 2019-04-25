/* O operador LIKE é extremamente util para trabalhar com texto, usado com WHERE, frequentemente utiliza citações, neste caso o (%),
faz um busca onde se encontra resultado True, e ele faz diferenciação de letras Maiusculas de Minusculas
*/

/* Todas companias que o nome começam com a letra 'C'*/
SELECT *
	FROM accounts
    WHERE name LIKE 'C%';

/* Todas companias que o nome possui a palavra 'one' em qualquer posição*/
SELECT *
	FROM accounts
    WHERE name LIKE '%one%';

/* Todas companias que o nome termina com a letra 's'*/
SELECT *
	FROM accounts
    WHERE name LIKE '%s';
