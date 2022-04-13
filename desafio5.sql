SELECT m.musica AS `cancao`,
       COUNT(h.musica_id) AS `reproducoes`
FROM SpotifyClone.musicas AS m
JOIN SpotifyClone.historico AS h ON m.musica_id = h.musica_id
GROUP BY `cancao`
ORDER BY `reproducoes` DESC,
         `cancao` ASC
LIMIT 2;

-- Para contar as músicas repetidas na coluna historico.musica_id, utilizei COUNT com base nos ids da coluna musicas.musica_id
-- Para agrupar as contagens com base nas músicas, utilizei GROUP BY com `cancao`
-- Para pegar as duas músicas mais escutadas, ordenei primeiro por ordem descendente a coluna `reproducoes` e para ordernar em ordem alfabetica, `cancao` por ordem ascendente
-- Para limitar o filtro, utilizei LIMIT
