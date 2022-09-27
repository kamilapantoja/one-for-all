SELECT
    COUNT(history.usuario_id) AS quantidade_musicas_no_historico
FROM
    SpotifyClone.usuario_tabela AS usuario_tabela
    INNER JOIN SpotifyClone.reproducoes_historico_tabela AS history
    ON usuario_tabela.usuario_id = history.usuario_id
    AND usuario_tabela.usuario = 'Bill';