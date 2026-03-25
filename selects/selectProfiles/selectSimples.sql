-- Seleciona todas as colunas da tabela profiles do banco sistema_de_pedidos
SELECT * FROM sistema_de_pedidos.profiles;

-- Seleciona apenas as colunas id e phone da tabela profiles
SELECT p.id,
       p.phone
FROM sistema_de_pedidos.profiles p;

-- Seleciona id e phone, renomeando a coluna phone para "telefone"
SELECT p.id, 
       p.phone AS telefone
FROM sistema_de_pedidos.profiles p;

-- Seleciona id, telefone e endereço apenas para registros com id maior ou igual a 2
SELECT p.id,
       p.phone AS telefone,
       p.address AS endereco
FROM sistema_de_pedidos.profiles p
WHERE p.id >= 2;

-- Seleciona id, telefone, endereço e cidade
-- Filtra registros onde id é maior ou igual a 2 OU menor ou igual a 1
SELECT p.id,
       p.phone AS telefone,
       p.address AS endereco,
       p.city AS cidade
FROM sistema_de_pedidos.profiles p
WHERE p.id >= 2
   OR p.id <= 1;

-- Seleciona id, telefone e endereço
-- Filtra registros onde id está entre 6 e 9 usando operadores lógicos
SELECT p.id,
       p.phone AS telefone,
       p.address AS endereco
FROM sistema_de_pedidos.profiles p
WHERE p.id > 5
  AND p.id < 10;

-- Seleciona id, telefone e endereço
-- Filtra registros onde o id está entre 5 e 10 usando BETWEEN
-- BETWEEN inclui os valores 5 e 10
SELECT p.id,
       p.phone AS telefone,
       p.address AS endereco
FROM sistema_de_pedidos.profiles p
WHERE p.id BETWEEN 5 AND 10;

-- Seleciona id, telefone e endereço
-- Ordena os resultados pelo id em ordem decrescente
SELECT p.id,
       p.phone AS telefone,
       p.address AS endereco
FROM sistema_de_pedidos.profiles p
ORDER BY p.id DESC;

-- Seleciona id, telefone e endereço
-- Ordena os resultados pelo id em ordem crescente
SELECT p.id,
       p.phone AS telefone,
       p.address AS endereco
FROM sistema_de_pedidos.profiles p
ORDER BY p.id ASC;

-- Seleciona id, telefone e endereço
-- Limita o resultado aos primeiros 3 registros
SELECT p.id,
       p.phone AS telefone,
       p.address AS endereco
FROM sistema_de_pedidos.profiles p
LIMIT 3;

-- Seleciona id, telefone e endereço
-- Pula os 2 primeiros registros e retorna os próximos 2
SELECT p.id,
       p.phone AS telefone,
       p.address AS endereco
FROM sistema_de_pedidos.profiles p
LIMIT 2 OFFSET 2;