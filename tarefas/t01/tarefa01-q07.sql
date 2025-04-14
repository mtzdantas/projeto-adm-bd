CREATE VIEW total_funcionarios_por_departamento AS
SELECT cod_depto AS departamento_id, COUNT(*) AS total_funcionarios
FROM funcionario
GROUP BY cod_depto;
SELECT 
  d.descricao AS nome_departamento,
  g.nome AS nome_gerente,
  COALESCE(tf.total_funcionarios, 0) AS numero_funcionarios
FROM departamento d
LEFT JOIN funcionario g ON d.cod_gerente = g.codigo
LEFT JOIN total_funcionarios_por_departamento tf ON d.codigo = tf.departamento_id;
