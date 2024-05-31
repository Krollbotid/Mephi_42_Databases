CREATE TABLE Ratings (
    rating_id SERIAL PRIMARY KEY,
    game_id INT,
    user_id INT,
    score INT,
    review TEXT,
    rating_date DATE
);