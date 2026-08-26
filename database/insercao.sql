USE projeto_pi;

INSERT INTO usuario (nome, email, senha, dt_cadastro, role) VALUES 
('Brian', 'brian@gmail.com', 'senha123', NOW(), 'ADMIN'),
('Fernando Brandão', 'fernando@gmail.com', 'senha123', NOW(), 'USUARIO'),
('Julia Araripe', 'julia@gmail.com', 'senha123', NOW(), 'GESTOR'),
('Cláudio Freezarini', 'freeza@gmail.com', 'senha123', NOW(), 'GESTOR'),
('Matheus Matos', 'matheus@gmail.com', 'senha123', NOW(), 'USUARIO');

INSERT INTO empresa (nome, cnpj, logradouro, bairro, cidade, estado, cep, dt_cadastro) VALUES 
('Grupo Braido', '59274167000193', 'Rua Sao Jorge, 300', 'Santo Antonio', 'São Caetano do Sul', 'SP', '09530901', NOW()),
('Spironelli', '81468100000220', 'Rua lala', 'Santo Antonio' , 'São Caetano do Sul', 'SP', '00000000', NOW()),
('Goiás Rendering', '1234567891234', 'Rua lala', 'Santo Antonio' , 'São Caetano do Sul', 'SP', '00000000', NOW()),