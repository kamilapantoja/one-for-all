SELECT
    cancoes_tabela.cancao AS cancao,
    COUNT(*) AS reproducoes
FROM
    SpotifyClone.cancoes_tabela AS cancoes_tabela
    INNER JOIN SpotifyClone.reproducoes_historico_tabela AS history
    ON cancoes_tabela.cancao_id = history.cancao_id
GROUP BY
    cancoes_tabela.cancao_id
ORDER BY
    reproducoes DESC,
    cancoes_tabela.cancao
LIMIT 2;