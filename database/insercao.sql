USE render_trace;

INSERT INTO usuario (nome, email, senha, dt_cadastro, role) VALUES 
('Brian', 'brian@gmail.com', 'senha123', NOW(), 'ADMIN'),
('Fernando Brandão', 'fernando@gmail.com', 'senha123', NOW(), 'USUARIO'),
('Julia Araripe', 'julia@gmail.com', 'senha123', NOW(), 'GESTOR'),
('Cláudio Freezarini', 'freeza@gmail.com', 'senha123', NOW(), 'GESTOR'),
('Matheus Matos', 'matheus@gmail.com', 'senha123', NOW(), 'USUARIO');

INSERT INTO empresa (razao_social, cnpj, dt_cadastro) VALUES
('Grupo Braido', '59274167000193', NOW()),
('Spironelli', '81468100000220', NOW()),
('Goiás Rendering', '19357388000100', NOW()),
('Grupo FASA', '13151358000167', NOW()),
('Porto Reciclagem', '03124463000153', NOW());

INSERT INTO unidade(empresa_id, nome, logradouro, bairro, cidade, estado, cep) VALUES
 (1, 'Industria Agroquimica Grupo Braido LTDA', 'Rua Sao Jorge, 300', 'Santo Antonio', 'São Caetano do Sul', 'SP', '09530901'),
 (2, 'Spironelli', 'R. Pingüim, 900', 'Indústrias Leves', 'Londrina', 'PR', '86030380'),
 (3, 'Goiás Rendering' ,'Estrada do Bugre, Km 7, Fazenda Fazendinha', 'Área Rural de Trindade,', 'Trindade', 'GO', '75393899'),
 (4, 'FAROS IND. DE FARINHA DE OSSOS LTDA','Rua João Eckert, 950', 'São Rafael', 'Cruzeiro do Sul', 'RS', '95930000'),
 (5, 'Porto Reciclagem Animal', 'Santo Antônio do Descoberto', 'Quadra 18 Lotes 01 a 06, setor agroindustrial', 'Porto Nacional', 'GO', '72901495');

INSERT INTO tolva (unidade_id, altura, capacidade, residuo, residuo_entrada, residuo_saida) VALUES
(1, 300.00, 1500.00, 'ossos', NOW(), NOW()),
(2, 100.00, 2500.00, 'sangue', NOW(), NOW()),
(3, 200.00, 1500.00, 'visceras', NOW(), NOW()),
(4, 250.00, 1000.00, 'ossos', NOW(), NOW()),
(5, 380.00, 2300.00, 'visceras', NOW(), NOW());

INSERT INTO sensor (codigo, tolva_id, dt_instalacao) VALUES
('ABC-123', 1, '2026-10-10'),
('CBA-321', 2, '2026-04-12'),
('AFH-146', 3, '2026-08-12'),
('GSA-184', 4, '2026-07-18'),
('KEC-941', 5, '2026-11-03');

INSERT INTO leitura_sensor (sensor_id, distancia, nivel_percentual, estado, dt_leitura) VALUES 
(1, 50.00, 73, 'alto', NOW()),
(2, 100.00, 50, 'medio', NOW()),
(3, 10.00, 94, 'critico', NOW()),
(4, 250.00, 10, 'baixo', NOW()),
(5, 120.00, 35, 'medio', NOW());
