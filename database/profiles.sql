CREATE TABLE sistema_de_pedidos.profiles (
    id INT UNSIGNED auto_increment NOT NULL,
    phone VARCHAR(20) NOT NULL,
    address VARCHAR(200) NOT NULL, 
    city VARCHAR(100) NOT NULL,
    user_id INT UNSIGNED NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT profiles_phone_unique UNIQUE (phone),
    CONSTRAINT fk_user_profile FOREIGN KEY (user_id) REFERENCES sistema_de_pedidos.users(id) ON DELETE CASCADE
)
ENGINE=InnoDB DEFAULT
CHARSET=utf8mb4 
COLLATE=utf8mb4_0900_ai_ci;