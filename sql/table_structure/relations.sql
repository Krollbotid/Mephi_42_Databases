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
