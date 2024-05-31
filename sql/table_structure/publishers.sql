CREATE TABLE Publishers (
    publisher_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    games_published INT,
    average_annual_revenue DECIMAL(15, 2)
);
