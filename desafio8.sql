SELECT 
	ar.nome artista,
	al.titulo album
FROM album AS al
JOIN artista AS ar
ON al.artista_id = 1 AND ar.nome = 'Walter Phoenix';