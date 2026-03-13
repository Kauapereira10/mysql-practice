INSERT INTO sistema_de_pedidos.order_items
(quantity, uni_price, order_id, product_id)
VALUES
-- Pedido 1 (User 1)
(1, 129.90, 2, 1),   -- Mouse
(1, 249.90, 2, 2),   -- Teclado

-- Pedido 2 (User 2)
(1, 1199.90, 3, 9),  -- Cadeira Gamer
(1, 59.90, 3, 6),    -- Mousepad

-- Pedido 3 (User 3)
(1, 249.90, 4, 2),   -- Teclado

-- Pedido 4 (User 4)
(1, 1899.90, 5, 12), -- RTX 3060

-- Pedido 5 (User 5)
(2, 79.90, 6, 15),   -- Adaptador USB-C
(1, 249.90, 6, 2);   -- Teclado