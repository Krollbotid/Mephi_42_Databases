CREATE TABLE Developers (
    developer_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    employee_count INT,
    games_released INT
);

CREATE TABLE Publishers (
    publisher_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    games_published INT,
    average_annual_revenue DECIMAL(15, 2)
);

CREATE TABLE Genres (
    genre_id SERIAL PRIMARY KEY,
    genre_name VARCHAR(100) NOT NULL
);

CREATE TABLE Games (
    game_id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    release_year INT,
    developer_id INT REFERENCES Developers(developer_id),
    publisher_id INT REFERENCES Publishers(publisher_id),
    age_rating VARCHAR(10),
    peak_players INT
);

CREATE TABLE GameGenres (
    game_id INT,
    genre_id INT,
    PRIMARY KEY (game_id, genre_id),
    FOREIGN KEY (game_id) REFERENCES Games(game_id),
    FOREIGN KEY (genre_id) REFERENCES Genres(genre_id)
);

CREATE TABLE Users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    age INT,
    gender VARCHAR(10)
);

CREATE TABLE Ratings (
    rating_id SERIAL PRIMARY KEY,
    game_id INT REFERENCES Games(game_id),
    user_id INT REFERENCES Users(user_id),
    score INT,
    review TEXT,
    rating_date DATE
);
