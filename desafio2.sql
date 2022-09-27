SELECT
COUNT(DISTINCT canc.cancao_id) AS cancoes,
COUNT(DISTINCT art.artista_id) AS artistas,
COUNT(DISTINCT alb.album_id) AS albuns
FROM
SpotifyClone.cancoes_tabela AS canc,
SpotifyClone.artista_tabela AS art,
SpotifyClone.album_tabela AS alb;