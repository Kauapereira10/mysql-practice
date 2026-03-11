CREATE TABLE sistema_de_pedidos.orders (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    order_date DATETIME NOT NULL DEFAULT NOW(),
    total_value DECIMAL (10, 2) NOT NULL DEFAULT 0.00,
    status ENUM('Pending', 'Paid', 'Processing', 'Shipped', 'Delivered', 'Cancelled') NOT NULL,
    user_id INT UNSIGNED NOT NULL,
    CONSTRAINT orders_id_pk PRIMARY KEY (id),
    CONSTRAINT fk_user_order FOREIGN KEY (user_id) REFERENCES sistema_de_pedidos.users (id) ON DELETE CASCADE
);