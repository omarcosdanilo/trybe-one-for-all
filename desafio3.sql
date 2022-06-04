SELECT 
	  u.nome usuario,
    COUNT(h.usuario_id) qtde_musicas_ouvidas,
    round(SUM(c.duracao_segundos/60), 2) total_minutos
FROM usuario AS u
INNER JOIN historico_de_reproducao AS h
ON h.usuario_id = u.id
INNER JOIN cancao as c
ON h.cancao_id = c.id
GROUP BY h.usuario_id
ORDER BY u.nome;