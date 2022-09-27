SELECT
    usuario_tabela.usuario AS usuario,
    COUNT(usuario_tabela.usuario_id) AS qtde_musicas_ouvidas,
    ROUND(SUM(cancoes_tabela.duracao / 60), 2) AS total_minutos
FROM
    SpotifyClone.usuario_tabela AS usuario_tabela
    INNER JOIN SpotifyClone.reproducoes_historico_tabela AS history ON usuario_tabela.usuario_id = history.usuario_id
    INNER JOIN SpotifyClone.cancoes_tabela AS cancoes_tabela ON history.cancao_id = cancoes_tabela.cancao_id
GROUP BY
    usuario_tabela.usuario;