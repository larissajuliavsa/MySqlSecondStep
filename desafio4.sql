SELECT u.usuario AS `usuario`,
       IF(MAX(h.data_historico) LIKE '2021%', 'Usuário ativo', 'Usuário inativo') AS `condicao_usuario`
FROM SpotifyClone.usuarios AS u
JOIN SpotifyClone.historico AS h ON u.usuario_id = h.usuario_id
GROUP BY `usuario`;

-- Para saber se o usuário está ativo ou não, peguei o maior valor da coluna historico.data_historico com base no usuário
-- e com este valor, realizei uma condicional "se o dado começar com o texto '2021'" deve retornar 'Usuário ativo', caso não 'Usuário inativo'

-- Para agrupar os valores da coluna historico.data_historico, utilizei o usuário como base em GROUP BY
