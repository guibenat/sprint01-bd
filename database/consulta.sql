USE render_trace;

-- Informações sobre a empresa e unidade
-- Informação sobre o perfil do usuário
-- Informação sobre as tolvas pertecentes a unidade
-- Exibir os sensores cadastrados da empresa
-- exibir os sensores, a leitura de cada um e em qual tolva
-- exibir a tolva e o armazenamento dela (tratar os valores null) 

-- Exibir as informações de um usuário específico
SELECT nome, email, dt_cadastro, tipo,
CASE
	WHEN status = 1 THEN 'Ativo'
    WHEN status = 0 THEN 'Inativo'
END AS status
FROM usuario
WHERE id = 6;

-- Exibir informação sobre a empresa do usuário
SELECT razao_social, cnpj, 

SELECT * FROM empresa;

SELECT * FROM unidade;

SELECT * FROM tolva;

SELECT * FROM sensor;

SELECT * FROM leitura_sensor;

SELECT * FROM armazenamento;