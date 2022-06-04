SELECT
    c.nome cancao,
    COUNT(*) reproducoes
FROM historico_de_reproducao AS h
INNER JOIN cancao AS c
ON h.cancao_id = c.id
GROUP BY cancao_id
HAVING (COUNT(*) > 1)
ORDER BY c.nome
LIMIT 2;