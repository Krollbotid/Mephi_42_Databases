INSERT INTO Developers (name, employee_count, games_released) VALUES 
('Epic Games', 1000, 40),
('Valve Corporation', 500, 30),
('CD Projekt Red', 800, 20),
('Ubisoft Montreal', 3500, 50),
('BioWare', 1500, 30),
('Paradox Development Studio', 400, 100),
('Infinity Ward', 500, 25),
('Treyarch', 800, 30),
('Arrowhead Game Studios', 50, 10),
('Insomniac Games', 300, 30);

INSERT INTO Publishers (name, games_published, average_annual_revenue) VALUES 
('Electronic Arts', 200, 5400000000),
('Activision Blizzard', 150, 7000000000),
('Ubisoft', 180, 2000000000),
('Valve Corporation', 30, 4000000000),
('Epic Games', 50, 3000000000),
('CD Projekt', 20, 1000000000),
('Paradox Interactive', 150, 500000000),
('Sony Interactive Entertainment', 300, 10000000000);

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
('Crusader Kings III', 2020, 6, 7, '16+', 100000),
('Helldivers', 2015, 9, 8, '16+', 50000),
('Spider-Man', 2018, 10, 8, '16+', 500000);

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
(8, 5),
(9, 1),
(9, 4),
(10, 1),
(10, 2);

INSERT INTO Users (username, email, age, gender) VALUES 
('john_doe', 'john@example.com', 25, 'Male'),
('jane_smith', 'jane@example.com', 30, 'Female'),
('sam_jones', 'sam@example.com', 22, 'Male');

INSERT INTO Ratings (game_id, user_id, score, review, rating_date) VALUES 
(1, 1, 9, 'Great game!', '2023-01-15'),
(1, 2, 7, 'Good, but can be better.', '2023-02-10'),
(1, 3, 8, 'Enjoyable gameplay.', '2023-03-05'),

(2, 2, 8, 'Very immersive.', '2023-02-20'),
(2, 1, 9, 'Fantastic VR experience.', '2023-03-12'),
(2, 3, 7, 'Pretty good.', '2023-04-08'),

(3, 3, 10, 'Masterpiece.', '2023-03-25'),
(3, 2, 9, 'Amazing story.', '2023-04-14'),
(3, 1, 8, 'Solid RPG.', '2023-05-20'),

(4, 1, 8, 'Fantastic storyline!', '2023-04-10'),
(4, 2, 7, 'Good, but not the best in the series.', '2023-05-22'),
(4, 3, 9, 'Great visuals and story.', '2023-06-18'),

(5, 2, 9, 'Best in the series.', '2023-05-12'),
(5, 1, 8, 'Very enjoyable.', '2023-06-15'),
(5, 3, 7, 'Good shooter.', '2023-07-05'),

(6, 3, 7, 'Decent game.', '2023-06-18'),
(6, 1, 6, 'Not as good as expected.', '2023-07-10'),
(6, 2, 8, 'Solid gameplay.', '2023-08-08'),

(7, 1, 9, 'Excellent RPG!', '2023-07-22'),
(7, 2, 8, 'Good story.', '2023-08-25'),
(7, 3, 7, 'Could be better.', '2023-09-12'),

(8, 2, 9, 'Great strategy game.', '2023-08-30'),
(8, 1, 8, 'Very detailed.', '2023-09-15'),
(8, 3, 7, 'Good, but too complex.', '2023-10-10'),

(9, 3, 8, 'Fun and challenging.', '2023-09-15'),
(9, 1, 9, 'Great co-op experience.', '2023-10-05'),
(9, 2, 7, 'Enjoyable but repetitive.', '2023-11-02'),

(10, 1, 10, 'Amazing graphics and story!', '2023-10-20'),
(10, 2, 9, 'One of the best games I`ve played.', '2023-11-18'),
(10, 3, 8, 'Great gameplay, but some bugs.', '2023-12-10');


INSERT INTO DeveloperPublisherRelationships (developer_id, publisher_id, relationship_type, start_date, end_date) VALUES 
(1, 5, 'independent', '2000-01-01', NULL),
(2, 4, 'independent', '1996-08-24', NULL),
(3, 6, 'independent', '2002-05-01', NULL),
(4, 3, 'owner', '1997-03-16', NULL),
(5, 1, 'owner', '2005-11-07', NULL),
(6, 7, 'owner', '2009-06-01', NULL),
(7, 2, 'owner', '2003-10-29', NULL),
(8, 2, 'owner', '2005-11-15', NULL),
(9, 8, 'partner', '2014-01-01', '2016-12-31'),
(4, 1, 'partner', '2012-03-01', '2015-07-01'),
(10, 8, 'partner', '2016-01-01', '2019-12-31');
