SELECT COUNT(h.usuario_id) AS `quantidade_musicas_no_historico`
FROM SpotifyClone.historico AS h
JOIN SpotifyClone.usuarios AS u ON h.usuario_id = u.usuario_id
GROUP BY u.usuario
HAVING u.usuario = 'Bill';

-- Para contar as músicas no histórico, utilizei COUNT na coluna historico.usuario_id.
-- Quando o id da coluna historico.usuario_id for igual ao da usuarios.usuario_id,
-- contar pelo dado de busca, como por exemplo 'Bill'
