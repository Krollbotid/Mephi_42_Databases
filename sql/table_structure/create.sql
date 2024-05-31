-- this file is one-file database-creator
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
    developer_id INT,
    publisher_id INT,
    age_rating VARCHAR(10),
    peak_players INT
);

CREATE TABLE GameGenres (
    game_id INT,
    genre_id INT,
    PRIMARY KEY (game_id, genre_id)
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
    game_id INT,
    user_id INT,
    score INT,
    review TEXT,
    rating_date DATE
);

CREATE TABLE DeveloperPublisherRelationships (
    relationship_id SERIAL PRIMARY KEY,
    developer_id INT NOT NULL,
    publisher_id INT NOT NULL,
    relationship_type VARCHAR(50),
    start_date DATE,
    end_date DATE
);

-- Связь игр с разработчиками и издателями
ALTER TABLE Games
ADD CONSTRAINT fk_developer
FOREIGN KEY (developer_id)
REFERENCES Developers(developer_id);

ALTER TABLE Games
ADD CONSTRAINT fk_publisher
FOREIGN KEY (publisher_id)
REFERENCES Publishers(publisher_id);

-- Связь игр с жанрами
ALTER TABLE GameGenres
ADD CONSTRAINT fk_game
FOREIGN KEY (game_id)
REFERENCES Games(game_id);

ALTER TABLE GameGenres
ADD CONSTRAINT fk_genre
FOREIGN KEY (genre_id)
REFERENCES Genres(genre_id);

-- Связь оценок с играми и пользователями
ALTER TABLE Ratings
ADD CONSTRAINT fk_game_rating
FOREIGN KEY (game_id)
REFERENCES Games(game_id);

ALTER TABLE Ratings
ADD CONSTRAINT fk_user_rating
FOREIGN KEY (user_id)
REFERENCES Users(user_id);

-- Связь DeveloperPublisherRelationships с разработчиками и издателями
ALTER TABLE DeveloperPublisherRelationships
ADD CONSTRAINT fk_developer_relationship
FOREIGN KEY (developer_id)
REFERENCES Developers(developer_id);

ALTER TABLE DeveloperPublisherRelationships
ADD CONSTRAINT fk_publisher_relationship
FOREIGN KEY (publisher_id)
REFERENCES Publishers(publisher_id);
