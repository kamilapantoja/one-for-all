SELECT
    usuario_tabela.usuario AS usuario,
    IF (
        (SELECT
            DISTINCT YEAR(data_play)
         FROM
            SpotifyClone.reproducoes_historico_tabela
         WHERE
            usuario_tabela.usuario_id = usuario_id
            AND YEAR(data_play) = 2021
        ) IS NULL,
        'Usuário inativo',
        'Usuário ativo'
    ) AS condicao_usuario
FROM
    SpotifyClone.usuario_tabela AS usuario_tabela
GROUP BY
    usuario_tabela.usuario,
    condicao_usuario;