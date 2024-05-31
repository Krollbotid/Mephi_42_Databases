-- 1. Какие игры выпустила компания "Ubisoft Montreal"?
SELECT title FROM Games
JOIN Developers ON Games.developer_id = Developers.developer_id
WHERE Developers.name = 'Ubisoft Montreal';

-- 2. Какие игры имеют больше среднего числа игроков в пике?
SELECT title FROM Games
WHERE peak_players > (
    SELECT AVG(peak_players)
    FROM Games
);

-- 3. Какие игры имеют тот же издательский раздел, что и "Helldivers"?
SELECT title FROM Games
WHERE publisher_id = (
    SELECT publisher_id
    FROM Games
    WHERE title = 'Helldivers'
);

-- 4. Какие игры издала Sony после 2015?
SELECT title FROM Games
WHERE release_year > 2015
INTERSECT
SELECT title FROM Games
JOIN Publishers ON Games.publisher_id = Publishers.publisher_id
WHERE Publishers.name = 'Sony Interactive Entertainment';

-- 5. Какие пользователи оценили игру "Half-Life: Alyx" на 9 и выше?
SELECT Users.username FROM Users
JOIN Ratings ON Users.user_id = Ratings.user_id
JOIN Games ON Ratings.game_id = Games.game_id
WHERE Games.title = 'Half-Life: Alyx' AND Ratings.score >= 9;

-- 6. Каковы даты и оценки игр с рейтингом 18+?
WITH adult_ratings AS (
    SELECT *
    FROM Ratings
    JOIN Games ON Ratings.game_id = Games.game_id
    WHERE Games.age_rating = '18+'
)
SELECT score, rating_date
FROM adult_ratings;

-- 7. Какие пользователи оставили оценки для игр, выпущенных разработчиком "Ubisoft Montreal"?
SELECT DISTINCT username FROM Users
WHERE user_id IN (
    SELECT user_id
    FROM Ratings
    WHERE game_id IN (
        SELECT game_id
        FROM Games
        WHERE developer_id = (
            SELECT developer_id
            FROM Developers
            WHERE name = 'Ubisoft Montreal'
        )
    )
);
-- 8. Как менялась оценка каждой игр с течением времени?
SELECT g.title, r.rating_date, r.score,
    r.score - LAG(r.score, 1) OVER (PARTITION BY r.game_id ORDER BY r.rating_date) AS score_change
FROM
    Ratings r
JOIN
    Games g ON r.game_id = g.game_id
ORDER BY
    g.title, r.rating_date;

