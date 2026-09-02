USE render_trace;

-- USUÁRIOS
INSERT INTO usuario (nome, email, senha, dt_cadastro, tipo) VALUES 
('Brian', 'brian@gmail.com', 'senha123', NOW(), 'ADMIN'),
('Fernando Brandão', 'fernando@gmail.com', 'senha123', NOW(), 'ADMIN'),
('Julia Araripe', 'julia@gmail.com', 'senha123', NOW(), 'GESTOR'),
('Cláudio Freezarini', 'freeza@gmail.com', 'senha123', NOW(), 'GESTOR'),
('Matheus Matos', 'matheus@gmail.com', 'senha123', NOW(), 'GESTOR');


-- EMPRESAS
INSERT INTO empresa (razao_social, cnpj, dt_cadastro) VALUES
('Grupo Braido', '59274167000193', NOW()),
('Spironelli', '81468100000220', NOW()),
('Goiás Rendering', '19357388000100', NOW()),
('Grupo FASA', '13151358000167', NOW()),
('Porto Reciclagem', '03124463000153', NOW());


-- UNIDADES
INSERT INTO unidade
(empresa_id, nome_fantasia, logradouro, bairro, cidade, estado, cep) VALUES
(1, 'Industria Agroquimica Grupo Braido LTDA', 
'Rua Sao Jorge, 300', 'Santo Antonio', 
'São Caetano do Sul', 'SP', '09530901'),

(2, 'Spironelli', 
'R. Pingüim, 900', 'Indústrias Leves', 
'Londrina', 'PR', '86030380'),

(3, 'Goiás Rendering', 
'Estrada do Bugre, Km 7, Fazenda Fazendinha', 
'Área Rural de Trindade', 'Trindade', 'GO', '75393899'),

(4, 'FAROS IND. DE FARINHA DE OSSOS LTDA', 
'Rua João Eckert, 950', 'São Rafael', 
'Cruzeiro do Sul', 'RS', '95930000'),

(5, 'Porto Reciclagem Animal', 
'Santo Antônio do Descoberto', 
'Quadra 18 Lotes 01 a 06, setor agroindustrial', 
'Porto Nacional', 'GO', '72901495');


-- TANQUES DE ARMAZENAMENTO
INSERT INTO tanque 
(unidade_id, altura, capacidade, residuo) VALUES
(1, 300.00, 1500.00, 'ossos'),
(2, 100.00, 2500.00, 'sangue'),
(3, 200.00, 1500.00, 'visceras'),
(4, 250.00, 1000.00, 'ossos'),
(5, 380.00, 2300.00, 'visceras');


-- PERÍODOS DE ARMAZENAMENTO
INSERT INTO periodo_armazenamento
(tanque_id, dt_entrada, dt_saida) VALUES
(1, '2026-08-20 08:00:00', '2026-08-20 09:30:00'),
(1, '2026-08-20 13:00:00', '2026-08-20 15:00:00'),
(1, '2026-08-21 08:30:00', '2026-08-21 10:20:00'),

(2, '2026-08-21 10:00:00', '2026-08-21 11:20:00'),
(2, '2026-08-22 14:00:00', '2026-08-22 16:30:00'),

(3, '2026-08-22 13:00:00', '2026-08-22 15:10:00'),
(3, '2026-08-23 09:00:00', '2026-08-23 12:00:00'),

(4, '2026-08-23 07:30:00', '2026-08-23 08:40:00'),
(4, '2026-08-24 15:00:00', '2026-08-24 17:30:00'),

(5, '2026-08-24 14:00:00', NULL);


-- SENSORES
INSERT INTO sensor 
(codigo, tanque_id, dt_instalacao) VALUES
('ABC-123', 1, '2026-08-10 08:00:00'),
('CBA-321', 2, '2026-04-12 09:00:00'),
('AFH-146', 3, '2026-08-12 10:00:00'),
('GSA-184', 4, '2026-07-18 08:30:00'),
('KEC-941', 5, '2026-08-03 11:00:00');


-- LEITURAS DOS SENSORES
INSERT INTO leitura_sensor 
(sensor_id, distancia, nivel_percentual, estado, dt_leitura) VALUES

-- SENSOR 1 / TANQUE 1
(1, 210.00, 30.00, 'baixo',   '2026-08-20 08:00:00'),
(1, 175.00, 45.00, 'medio',   '2026-08-20 08:30:00'),
(1, 120.00, 63.00, 'alto',    '2026-08-20 09:00:00'),
(1, 70.00,  82.00, 'critico', '2026-08-20 09:30:00'),
(1, 180.00, 43.00, 'medio',   '2026-08-20 10:00:00'),

(1, 200.00, 35.00, 'medio',   '2026-08-20 13:00:00'),
(1, 130.00, 60.00, 'medio',   '2026-08-20 13:30:00'),
(1, 90.00,  75.00, 'alto',    '2026-08-20 14:00:00'),
(1, 55.00,  88.00, 'critico', '2026-08-20 14:30:00'),
(1, 190.00, 40.00, 'medio',   '2026-08-20 15:00:00'),


-- SENSOR 2 / TANQUE 2
(2, 80.00,  20.00, 'baixo',   '2026-08-21 10:00:00'),
(2, 65.00,  35.00, 'medio',   '2026-08-21 10:30:00'),
(2, 50.00,  50.00, 'medio',   '2026-08-21 11:00:00'),
(2, 30.00,  70.00, 'alto',    '2026-08-21 11:20:00'),

(2, 75.00,  25.00, 'baixo',   '2026-08-22 14:00:00'),
(2, 55.00,  45.00, 'medio',   '2026-08-22 15:00:00'),
(2, 20.00,  80.00, 'alto',    '2026-08-22 16:00:00'),
(2, 15.00,  85.00, 'critico', '2026-08-22 16:30:00'),


-- SENSOR 3 / TANQUE 3
(3, 150.00, 25.00, 'baixo',   '2026-08-22 13:00:00'),
(3, 120.00, 40.00, 'medio',   '2026-08-22 13:30:00'),
(3, 80.00,  60.00, 'medio',   '2026-08-22 14:00:00'),
(3, 40.00,  80.00, 'alto',    '2026-08-22 14:30:00'),
(3, 15.00,  93.00, 'critico', '2026-08-22 15:00:00'),
(3, 130.00, 35.00, 'medio',   '2026-08-22 15:10:00'),


-- SENSOR 4 / TANQUE 4
(4, 220.00, 12.00, 'baixo',   '2026-08-23 07:30:00'),
(4, 180.00, 28.00, 'baixo',   '2026-08-23 08:00:00'),
(4, 130.00, 48.00, 'medio',   '2026-08-23 08:30:00'),
(4, 100.00, 62.00, 'alto',    '2026-08-23 08:40:00'),

(4, 210.00, 16.00, 'baixo',   '2026-08-24 15:00:00'),
(4, 150.00, 40.00, 'medio',   '2026-08-24 16:00:00'),
(4, 90.00,  65.00, 'alto',    '2026-08-24 17:00:00'),
(4, 60.00,  78.00, 'alto',    '2026-08-24 17:30:00'),


-- SENSOR 5 / TANQUE 5
(5, 300.00, 20.00, 'baixo',   '2026-08-24 14:00:00'),
(5, 240.00, 35.00, 'medio',   '2026-08-24 14:30:00'),
(5, 180.00, 52.00, 'medio',   '2026-08-24 15:00:00'),
(5, 120.00, 70.00, 'alto',    '2026-08-24 15:30:00'),
(5, 80.00,  82.00, 'critico', '2026-08-24 16:00:00'),
(5, 60.00,  90.00, 'critico', '2026-08-24 16:30:00'),
(5, 150.00, 60.00, 'medio',   '2026-08-24 17:00:00');