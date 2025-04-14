-- Inserindo departamentos
INSERT INTO departamento (descricao, cod_gerente) VALUES
('TI', NULL),
('RH', NULL),
('Financeiro', NULL),
('Marketing', NULL),
('Operações', NULL);

-- Inserindo funcionários
INSERT INTO funcionario (nome, sexo, dt_nasc, salario, cod_depto) VALUES
('João Silva', 'M', '1985-05-10', 5000.00, 1),
('Maria Souza', 'F', '1990-03-15', 4800.00, 2),
('Carlos Lima', 'M', '1982-07-20', 6000.00, 1),
('Ana Santos', 'F', '1995-11-30', 4700.00, 3),
('Pedro Oliveira', 'M', '1988-01-25', 5500.00, 4);

-- Atualizando gerentes
UPDATE departamento SET cod_gerente = 1 WHERE codigo = 1;
UPDATE departamento SET cod_gerente = 2 WHERE codigo = 2;
UPDATE departamento SET cod_gerente = 4 WHERE codigo = 3;

-- Inserindo projetos
INSERT INTO projeto (nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim) VALUES
('Sistema de Vendas', 'Desenvolvimento do sistema de vendas.', 1, 1, '2023-01-01', '2023-12-31'),
('Recrutamento', 'Processo seletivo para novos funcionários.', 2, 2, '2023-02-01', '2023-06-30'),
('Análise Financeira', 'Estudo dos dados contábeis da empresa.', 3, 4, '2023-03-01', '2023-09-30'),
('Campanha Publicitária', 'Campanha de marketing digital.', 4, 5, '2023-04-01', '2023-08-31'),
('Melhoria Operacional', 'Aprimoramento de processos internos.', 5, 3, '2023-05-01', '2023-11-30');

-- Inserindo atividades
INSERT INTO atividade (nome, descricao, cod_responsavel, data_inicio, data_fim) VALUES
('Análise de requisitos', 'Entender as necessidades do cliente.', 1, '2023-01-01', '2023-01-31'),
('Entrevistas', 'Aplicação de entrevistas para candidatos.', 2, '2023-02-01', '2023-02-15'),
('Relatório financeiro', 'Elaboração de relatórios mensais.', 4, '2023-03-01', '2023-03-10'),
('Criação de artes', 'Design de artes publicitárias.', 5, '2023-04-01', '2023-04-20'),
('Mapeamento de processos', 'Identificação de processos internos.', 3, '2023-05-01', '2023-05-15');

-- Relacionando atividades aos projetos
INSERT INTO atividade_projeto (cod_projeto, cod_atividade) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);