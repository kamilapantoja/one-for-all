SELECT
artista_tabela.artista AS artista,
album_tabela.album AS album,
COUNT(seg.usuario_id) AS seguidores

FROM
SpotifyClone.artista_tabela AS artista_tabela
INNER JOIN SpotifyClone.album_tabela AS album_tabela
ON artista_tabela.artista_id = album_tabela.artista_id
INNER JOIN SpotifyClone.seguindo_artistas_tabela AS seg
ON artista_tabela.artista_id = seg.artista_id

GROUP BY
artista_tabela.artista,
album_tabela.album

ORDER BY
seguidores DESC,
artista,
album;