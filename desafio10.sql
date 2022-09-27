SELECT
    cancoes_tabela.cancao AS nome,
    COUNT(history.cancao_id) AS reproducoes
FROM
    SpotifyClone.usuario_tabela AS usuario_tabela
    INNER JOIN SpotifyClone.reproducoes_historico_tabela AS history
    ON usuario_tabela.usuario_id = history.usuario_id
    INNER JOIN SpotifyClone.plano_tabela AS plano_tabela
    ON plano_tabela.plano_id = usuario_tabela.plano_id
    AND (
        plano_tabela.plano = 'gratuito'
        OR plano_tabela.plano = 'pessoal'
    )
    INNER JOIN SpotifyClone.cancoes_tabela AS cancoes_tabela
    ON history.cancao_id = cancoes_tabela.cancao_id
GROUP BY
    nome
ORDER BY
    nome;