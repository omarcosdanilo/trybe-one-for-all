SELECT
	  ar.nome AS artista,
    al.titulo AS album,
	  count(aseg.artista_id) AS seguidores
FROM artista AS ar
INNER JOIN album AS al
ON al.artista_id = ar.id
INNER JOIN artista_seguido AS aseg
ON aseg.artista_id = ar.id
GROUP BY aseg.artista_id, ar.nome, al.titulo
ORDER BY seguidores DESC, artista, album;