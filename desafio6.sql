SELECT MIN(p.plano_valor) AS `faturamento_minimo`,
       MAX(p.plano_valor) AS `faturamento_maximo`,
       ROUND(AVG(p.plano_valor), 2) AS `faturamento_medio`,
       SUM(p.plano_valor) AS `faturamento_total`
FROM SpotifyClone.planos AS p
JOIN SpotifyClone.usuarios AS u ON p.plano_id = u.plano_id;

-- Para filtrar o valore mínimo, máximo, médio e soma utilizei as funções de agregação:
-- MIN, MAX, AVG e SUM
