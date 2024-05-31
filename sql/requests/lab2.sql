-- Запрос 1: Полная выборка всех игр
SELECT * FROM Games;
-- Запрос 2: Условная выборка игр, выпущенных после 2016 года
SELECT title, release_year FROM Games WHERE release_year > 2016;
-- Запрос 3: Упорядоченная выборка разработчиков по количеству выпущенных игр
SELECT name, games_released FROM Developers ORDER BY games_released DESC;
-- Запрос 4: Выборка игр с использованием функции для расчета среднего количества игроков
SELECT title, peak_players, round(peak_players / 1000, 1) AS peak_players_in_thousands FROM Games;
-- Запрос 5: Выборка максимального количества выпущенных игр по разработчикам
SELECT name, MAX(games_released) AS max_games_released FROM Developers GROUP BY name;
-- Запрос 6: Выборка уникальных жанров
SELECT DISTINCT genre_name FROM Genres;
-- Запрос 7: Псевдо-выборка для оценки выражения
SELECT (3 + 5) AS result;
-- Запрос 8: Выборка оценок с сортировкой по дате
SELECT * FROM Ratings ORDER BY rating_date DESC;
