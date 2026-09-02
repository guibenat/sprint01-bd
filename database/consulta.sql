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
WHERE id = 1;

-- Exibir informação sobre a empresa do usuário
SELECT razao_social, cnpj, dt_cadastro, status
FROM empresa;

SELECT * FROM empresa;

SELECT * FROM unidade;

SELECT * FROM tanque;

-- Exibir a quantidade de tanques no sistema
SELECT COUNT(*) AS quantidade_tanque
FROM tanque;

-- Exibir a quantidade de tanques de uma unidade especifica
SELECT COUNT(*) AS quantidade_tanque
FROM tanque
WHERE unidade_id = 1;

-- Exibir a altura e capacidade de cada tanque
SELECT id, 
altura,
capacidade
FROM tanque;

-- Exibir a altura e capacidade de cada tanque de uma unidade especifica
SELECT id,
altura,
capacidade
FROM tanque
WHERE unidade_id = 1;

SELECT * FROM sensor;

SELECT * FROM leitura_sensor;

-- Exibir leitura do sensor 2 
SELECT 
CONCAT('O sensor ', sensor_id, ', apresenta um nível de: ', nivel_percentual,
'%, e o estado apresentado é: ', estado) AS relatorio
FROM leitura_sensor
WHERE sensor_id = 2;

SELECT *,
IFNULL(dt_saida, 'Sem saída identificada') AS 'Moniramento E/S'
FROM periodo_armazenamento;