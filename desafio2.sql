SELECT COUNT(DISTINCT m.musica) AS `cancoes`, COUNT(DISTINCT ar.artista) AS `artistas`, COUNT(DISTINCT al.album) AS `albuns`
FROM
	SpotifyClone.musicas AS m
	JOIN SpotifyClone.artistas AS ar
		ON m.artista_id = ar.artista_id
  JOIN SpotifyClone.albums AS al
		ON m.album_id = al.album_id;

-- Para listas as quantidades de dados das tabelas, utilizei COUNT e para prever dados repetidos DISTINCT

-- Para ter resultados de tabelas distintas, utilizei o JOIN com base na tabela musicas
-- onde a coluna artista_id da tabela música seja igual a coluna artista_id da tabela artistas
-- utilizei este resultado como base para fazer outro JOIN trazendo a tabela albums
-- onde a coluna album_id da tabela música seja igual a coluna album_id da tabela albums
