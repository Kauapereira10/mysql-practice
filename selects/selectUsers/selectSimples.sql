-- 1) Seleciona TODAS as colunas da tabela users
SELECT * 
FROM sistema_de_pedidos.users u;

-- 2) Seleciona apenas as colunas id e first_name
SELECT u.id, 
       u.first_name 
FROM sistema_de_pedidos.users u;

-- 3) Seleciona id e renomeia as colunas first_name e last_name
SELECT u.id, 
       u.first_name AS nome, 
       u.last_name AS sobrenome 
FROM sistema_de_pedidos.users u;

-- 4) Retorna usuários ordenados pelo primeiro nome
SELECT u.id, 
       u.first_name AS nome, 
       u.last_name AS sobrenome 
FROM sistema_de_pedidos.users u
ORDER BY u.first_name ASC;

-- 5) Retorna apenas o usuário com id igual a 1
SELECT u.id, 
       u.first_name AS nome, 
       u.last_name AS sobrenome 
FROM sistema_de_pedidos.users u
WHERE u.id = 1;

-- 6) Retorna usuários com id 1, 2 ou 3
SELECT u.id, 
       u.first_name AS nome, 
       u.last_name AS sobrenome 
FROM sistema_de_pedidos.users u
WHERE u.id IN (1, 2, 3);

-- 7) Retorna usuários com id maior que 3
SELECT u.id, 
       u.first_name AS nome, 
       u.email 
FROM sistema_de_pedidos.users u
WHERE u.id > 3;

-- 8) Retorna usuários com id entre 3 e 5 (inclusive)
SELECT u.id, 
       u.first_name AS nome, 
       u.email 
FROM sistema_de_pedidos.users u
WHERE u.id >= 3 
  AND u.id <= 5;

-- 9) Retorna usuários com id >= 3 OU id <= 2
SELECT u.id, 
       u.first_name AS nome, 
       u.email 
FROM sistema_de_pedidos.users u
WHERE u.id >= 3 
   OR u.id <= 2;

-- 10) Retorna usuários cujo nome começa com 'A'
SELECT u.id, 
       u.first_name AS nome, 
       u.email 
FROM sistema_de_pedidos.users u
WHERE u.first_name LIKE 'A%';

-- 11) Retorna usuários cujo nome contém 'a' em qualquer posição
SELECT u.id, 
       u.first_name AS nome, 
       u.email 
FROM sistema_de_pedidos.users u
WHERE u.first_name LIKE '%a%';

-- 12) Retorna usuários cujo nome termina com 'a'
SELECT u.id, 
       u.first_name AS nome, 
       u.email 
FROM sistema_de_pedidos.users u
WHERE u.first_name LIKE '%a';

-- 13) Retorna usuários cujo segundo caractere é 'a'
-- "_" representa exatamente um caractere
SELECT u.id, 
       u.first_name AS nome, 
       u.email 
FROM sistema_de_pedidos.users u
WHERE u.first_name LIKE '_a%';

-- 14) Retorna nomes que começam com 'A' 
-- e possuem qualquer caractere na terceira posição
SELECT u.id, 
       u.first_name AS nome, 
       u.email 
FROM sistema_de_pedidos.users u
WHERE u.first_name LIKE 'A_a%';

-- 15) Retorna nomes que começam com 'A' e terminam com 'a'
SELECT u.id, 
       u.first_name AS nome, 
       u.email 
FROM sistema_de_pedidos.users u
WHERE u.first_name LIKE 'A%a';

-- 16) Retorna nomes que começam com 'A' e terminam com 'a'
-- OU nomes que começam com 'A' e possuem qualquer caractere na terceira posição
SELECT u.id, 
       u.first_name AS nome, 
       u.email 
FROM sistema_de_pedidos.users u
WHERE u.first_name LIKE 'A%a' 
   OR u.first_name LIKE 'A_a%';

-- 17) Retorna nomes que contenham 'a'
-- E também comecem com 'A'
SELECT u.id, 
       u.first_name AS nome, 
       u.email 
FROM sistema_de_pedidos.users u
WHERE u.first_name LIKE '%a%' 
  AND u.first_name LIKE 'A%';

-- 18) Retorna nomes que contenham 'a'
-- MAS que NÃO comecem com 'A'
SELECT u.id, 
       u.first_name AS nome, 
       u.email 
FROM sistema_de_pedidos.users u
WHERE u.first_name LIKE '%a%' 
  AND u.first_name NOT LIKE 'A%';