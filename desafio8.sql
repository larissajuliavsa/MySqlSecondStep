SELECT ar.artista AS `artista`,
       al.album AS `album`
FROM SpotifyClone.artistas AS ar
JOIN SpotifyClone.albums AS al ON ar.artista_id = al.artista_id
GROUP BY `artista`,
         `album`
HAVING `artista` = 'Walter Phoenix'
ORDER BY `album` ASC;

-- Para filtrar o dado pelo nome do artista
-- utilizei como comparação a coluna artistas.artista_id que deva ser igual a coluna albums.artista_id
-- que tenha o nome da busca, como no exemplo 'Walter Phoenix'
-- quando tiver mais albuns, ordenar por oderm alfabética
