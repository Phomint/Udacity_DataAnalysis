/*Este JOIN nos permite unir as colunas empurrando de um lado especifico*/
SELECT c.countryid, c.countryName, s.stateName
  FROM Country c
  LEFT JOIN State s
  ON c.countryid = s.countryid;

SELECT c.countryid, c.countryName, s.stateName
  FROM Country c
  RIGHT JOIN State s
  ON c.countryid = s.countryid;
