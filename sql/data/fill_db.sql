INSERT INTO Developers (name, employee_count, games_released) VALUES 
('Epic Games', 1000, 40),
('Valve Corporation', 500, 30),
('CD Projekt Red', 800, 20),
('Ubisoft Montreal', 3500, 50),
('BioWare', 1500, 30),
('Paradox Development Studio', 400, 100),
('Infinity Ward', 500, 25),
('Treyarch', 800, 30);

INSERT INTO Publishers (name, games_published, average_annual_revenue) VALUES 
('Electronic Arts', 200, 5400000000),
('Activision Blizzard', 150, 7000000000),
('Ubisoft', 180, 2000000000),
('Valve Corporation', 30, 4000000000),
('Epic Games', 50, 3000000000),
('CD Projekt', 20, 1000000000),
('Paradox Interactive', 150, 500000000);

INSERT INTO Genres (genre_name) VALUES 
('Action'),
('Adventure'),
('RPG'),
('Strategy'),
('Simulation'),
('Shooter');

INSERT INTO Games (title, release_year, developer_id, publisher_id, age_rating, peak_players) VALUES 
('Fortnite', 2017, 1, 5, '13+', 12000000),
('Half-Life: Alyx', 2020, 2, 4, '17+', 16000),
('The Witcher 3', 2015, 3, 6, '18+', 103000),
('Assassin`s Creed Odyssey', 2018, 4, 3, '17+', 62000),
('Call of Duty: Modern Warfare', 2019, 7, 2, '18+', 2000000),
('Call of Duty: Black Ops', 2010, 8, 2, '18+', 900000),
('Dragon Age: Inquisition', 2014, 5, 1, '17+', 4000),
('Crusader Kings III', 2020, 6, 7, '16+', 100000);

INSERT INTO GameGenres (game_id, genre_id) VALUES 
(1, 1),
(1, 2),
(2, 1),
(3, 3),
(3, 2),
(4, 1),
(4, 2),
(5, 6),
(6, 6),
(7, 3),
(8, 3),
(8, 2),
(8, 5);

INSERT INTO Users (username, email, age, gender) VALUES 
('john_doe', 'john@example.com', 25, 'Male'),
('jane_smith', 'jane@example.com', 30, 'Female'),
('sam_jones', 'sam@example.com', 22, 'Male');

INSERT INTO Ratings (game_id, user_id, score, review, rating_date) VALUES 
(1, 1, 9, 'Great game!', '2023-01-15'),
(2, 2, 8, 'Very immersive.', '2023-02-20'),
(3, 3, 10, 'Masterpiece.', '2023-03-25'),
(4, 1, 8, 'Fantastic storyline!', '2023-04-10'),
(5, 2, 9, 'Best in the series.', '2023-05-12'),
(6, 3, 7, 'Decent game.', '2023-06-18'),
(7, 1, 9, 'Excellent RPG!', '2023-07-22'),
(8, 2, 9, 'Great strategy game.', '2023-08-30');

INSERT INTO DeveloperPublisherRelationships (developer_id, publisher_id, relationship_type, start_date, end_date) VALUES 
(1, 5, 'independent', '2000-01-01', NULL),
(2, 4, 'independent', '1996-08-24', NULL),
(5, 1, 'partner', '2005-11-07', '2015-05-05'),
(6, 7, 'partner', '2009-06-01', NULL);


