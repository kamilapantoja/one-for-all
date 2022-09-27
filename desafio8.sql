SELECT
    artista_tabela.artista AS artista,
    album_tabela.album AS album
FROM
    SpotifyClone.artista_tabela AS artista_tabela
    INNER JOIN SpotifyClone.album_tabela AS album_tabela
    ON artista_tabela.artista_id = album_tabela.artista_id
WHERE artista = 'Walter Phoenix'
ORDER BY
    album;