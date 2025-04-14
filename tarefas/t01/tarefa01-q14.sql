CREATE OR REPLACE VIEW vw_atividades_por_funcionario AS
SELECT 
  f.codigo AS cod_funcionario,
  f.nome AS nome_funcionario,
  COUNT(a.codigo) AS qtd_atividades
FROM funcionario f
JOIN atividade a ON f.codigo = a.cod_responsavel
GROUP BY f.codigo, f.nome;

SELECT * FROM vw_atividades_por_funcionario;