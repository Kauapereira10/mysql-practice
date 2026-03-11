CREATE TABLE sistema_de_pedidos.users (
    id INT UNSIGNED auto_increment NOT NULL,
    first_name VARCHAR(150) NOT NULL,
    last_name VARCHAR(150) NOT NULL, 
    email VARCHAR(255) NOT NULL,
    password_hash VARCHAR(65) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    CONSTRAINT users_unique UNIQUE KEY (email),
    CONSTRAINT users_pk PRIMARY KEY (id)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_ai_ci;
