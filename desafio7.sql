SELECT ar.artista AS `artista`,
       al.album AS `album`,
       COUNT(s.usuario_id) AS `seguidores`
FROM SpotifyClone.artistas AS ar
JOIN SpotifyClone.albums AS al ON ar.artista_id = al.artista_id
JOIN SpotifyClone.seguidores AS s ON ar.artista_id = s.artista_id
GROUP BY `artista`,
         `album`
ORDER BY `seguidores` DESC,
         `artista`,
         `album`;

-- Para exibir o número de seguidores, realizei a contagem da coluna seguidores.usuario_id com COUNT
-- onde o id da coluna artistas.artista_id tem que ser igual ao da coluna seguidores.artista_id

-- Agrupei os dados das colunas artista e album
-- Ordenei por ordem decrescente a coluna seguidores para mostrar o artista e album com mais seguidores
-- Para depois ordenar as colunas artista e album por ordem alfabética.
