/*LIMIT é um statements que ajuda não sobrecarregar serviços como limitando a buscar por algumas linhas*/
SELECT occurred_at, account_id, channel
  FROM web_events
  LIMIT 15;