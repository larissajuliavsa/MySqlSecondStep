SELECT u.usuario AS `usuario`,
       COUNT(h.usuario_id) AS `qtde_musicas_ouvidas`,
       ROUND((SUM(m.musica_duracao) / 60), 2) AS `total_minutos`
FROM SpotifyClone.usuarios AS u
JOIN SpotifyClone.historico AS h ON u.usuario_id = h.usuario_id
JOIN SpotifyClone.musicas AS m ON h.musica_id = m.musica_id
GROUP BY `usuario`;

-- Para listar a quantidade de músicas com base nos usuários, 
-- utilizei COUNT para contar as repetições de usuários,
-- quando o dado da coluna usuarios.usuario_id for igual ao da coluna historico.usuario_id.

-- Para qtde_musicas_ouvidas somei e arredondei os dados da coluna musicas.musica_duracao,
-- utilizando somente os dados que sejam compatíveis com os da coluna historico.musica_id.

-- Para agrupar os dados das colunas qtde_musicas_ouvidas e total_minutos
-- com base no usuário, utilizei GROUP BY.

-- Para identar a query utilizei o site: https://sqlformat.org/
