SELECT
	p3.valor_plano as faturamento_minimo,
	p2.valor_plano as faturamento_maximo,
	round(avg(p.valor_plano), 2) as faturamento_medio,
	sum(p.valor_plano) as faturamento_total
from usuario as u
INNER JOIN plano as p
ON u.plano_id = p.id
INNER JOIN plano as p2
ON p2.valor_plano = 7.99
INNER JOIN plano as p3
ON p3.valor_plano = 0.00;