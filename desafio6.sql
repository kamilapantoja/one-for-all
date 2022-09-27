SELECT
    MIN(plano_tabela.valor_plano) AS faturamento_minimo,
    MAX(plano_tabela.valor_plano) AS faturamento_maximo,
    ROUND(AVG(plano_tabela.valor_plano), 2) AS faturamento_medio,
    ROUND(SUM(plano_tabela.valor_plano), 2) AS faturamento_total
FROM
    SpotifyClone.usuario_tabela AS usuario_tabela
    INNER JOIN SpotifyClone.plano_tabela AS plano_tabela
    ON usuario_tabela.plano_id = plano_tabela.plano_id;