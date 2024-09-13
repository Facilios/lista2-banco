-- ex1

SELECT clientes.cliente_id, clientes.nome, interacoes.interacao_id, interacoes.tipo, interacoes.detalhes
FROM clientes
LEFT JOIN interacoes ON clientes.cliente_id = interacoes.cliente_id;

-- ex2
SELECT campanhas.campanha_id, campanhas.nome AS nome_campanha, clientes.cliente_id, clientes.nome AS nome_cliente
FROM campanhas
INNER JOIN participacoes_campanha ON campanhas.campanha_id = participacoes_campanha.campanha_id
INNER JOIN clientes ON participacoes_campanha.cliente_id = clientes.cliente_id;

-- ex3
SELECT clientes.cliente_id, clientes.nome, participacoes_campanha.campanha_id
FROM clientes
LEFT JOIN participacoes_campanha ON clientes.cliente_id = participacoes_campanha.cliente_id;

-- ex4
SELECT clientes.cliente_id, clientes.nome, campanhas.campanha_id, campanhas.nome AS nome_campanha
FROM clientes
RIGHT JOIN participacoes_campanha ON clientes.cliente_id = participacoes_campanha.cliente_id
RIGHT JOIN campanhas ON participacoes_campanha.campanha_id = campanhas.campanha_id;

-- ex5
SELECT clientes.nome, interacoes.tipo, interacoes.detalhes
FROM clientes
INNER JOIN interacoes ON clientes.cliente_id = interacoes.cliente_id;


--ex6
SELECT campanhas.campanha_id, campanhas.nome, COUNT(participacoes_campanha.cliente_id) AS total_clientes
FROM campanhas
LEFT JOIN participacoes_campanha ON campanhas.campanha_id = participacoes_campanha.campanha_id
GROUP BY campanhas.campanha_id;
