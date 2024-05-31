CREATE TABLE Games (
    game_id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    release_year INT,
    developer_id INT,
    publisher_id INT,
    age_rating VARCHAR(10),
    peak_players INT
);
