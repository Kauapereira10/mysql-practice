-- Seleciona todos os dados da tabela products
SELECT * FROM sistema_de_pedidos.products;

-- Seleciona apenas o nome e o preço dos produtos
SELECT name, price FROM sistema_de_pedidos.products;

-- Seleciona todos os produtos que estão com status ACTIVE
SELECT * FROM sistema_de_pedidos.products WHERE status = 'ACTIVE';

-- Seleciona produtos que possuem estoque maior que 0
SELECT * FROM sistema_de_pedidos.products WHERE stock > 0;

-- Seleciona produtos com preço maior que 100
SELECT * FROM sistema_de_pedidos.products WHERE price > 100;

-- Seleciona produtos com preço entre 50 e 200
-- "p" é um alias (apelido) para a tabela products
SELECT * FROM sistema_de_pedidos.products AS p WHERE p.price BETWEEN 50 AND 200;

-- Busca produtos cujo nome contém a palavra "mouse"
-- O % representa qualquer sequência de caracteres
SELECT * FROM sistema_de_pedidos.products AS p WHERE p.name LIKE '%mouse%';

-- Ordena os produtos do mais barato para o mais caro
SELECT * FROM sistema_de_pedidos.products AS p ORDER BY p.price ASC;

-- Ordena os produtos do mais caro para o mais barato
SELECT * FROM sistema_de_pedidos.products AS p ORDER BY p.price DESC;

-- Retorna apenas os 5 primeiros produtos da tabela
SELECT * FROM sistema_de_pedidos.products AS p LIMIT 5;

-- Conta o total de produtos cadastrados
SELECT COUNT(*) AS total_products FROM sistema_de_pedidos.products;

-- Calcula o preço médio dos produtos
SELECT AVG(price) AS average_price FROM sistema_de_pedidos.products;

-- Retorna o maior preço entre os produtos
SELECT MAX(price) AS max_price FROM sistema_de_pedidos.products;

-- Retorna o menor preço entre os produtos
SELECT MIN(price) AS min_price FROM sistema_de_pedidos.products;