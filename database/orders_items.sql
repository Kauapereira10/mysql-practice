CREATE TABLE sistema_de_pedidos.orders_items (
    id INT UNSIGNED auto increment NOT NULL,
    quantity INT UNSIGNED DEFAULT 0 NOT NULL,
    uni_price DECIMAL(10,2) DEFAULT 0.0 NULL,
    order_id INT UNSIGNED NOT NULL, 
    product_id INT UNSIGNED NOT NULL,
    CONSTRAINT order_items_pk PRIMARY KEY (id),
    CONSTRAINT order_items_orders_fk FOREIGN KEY (order_id) REFERENCES sismatema_de_pedidos.orders(id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT order_items_products_fk FOREIGN KEY (product_id) REFERENCES sistema_de_pedidos.products(id) ON DELETE CASCADE ON UPDATE CASCADE
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_ai_ci;