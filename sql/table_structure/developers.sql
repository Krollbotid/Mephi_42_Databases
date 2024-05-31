CREATE TABLE Developers (
    developer_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    employee_count INT,
    games_released INT
);
