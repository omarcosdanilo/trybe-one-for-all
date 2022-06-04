SELECT
	COUNT(DISTINCT c.nome) cancoes,
  COUNT(DISTINCT a.artista_id) artistas,
	COUNT(DISTINCT a.titulo) albuns
FROM album AS a
INNER JOIN cancao AS c;