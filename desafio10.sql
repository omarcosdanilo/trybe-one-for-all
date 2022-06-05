SELECT
	c.nome,
	count(hr.cancao_id) reproducoes
FROM historico_de_reproducao AS hr
JOIN cancao AS c
ON hr.cancao_id = c.id
WHERE hr.usuario_id = 1 OR hr.usuario_id = 4 OR hr.usuario_id = 5
GROUP BY c.nome
ORDER BY c.nome;