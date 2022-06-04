SELECT
	  u.nome usuario,
    IF (
		usuarioAtivo.usuario_id = u.id, 'Usuário ativo', 'Usuário inativo'
    ) condicao_usuario
from usuario AS u
LEFT JOIN (
	  SELECT
		DISTINCT h.usuario_id
        FROM historico_de_reproducao AS h
        WHERE h.data_reproducao like '2021%'
) AS usuarioAtivo
ON usuarioAtivo.usuario_id = u.id
ORDER BY u.nome;