-- Запрос 1: Полная выборка всех игр
SELECT * FROM Games;
-- Запрос 2: Условная выборка игр, выпущенных после 2016 года
SELECT title, release_year FROM Games WHERE release_year > 2016;
-- Запрос 3: Упорядоченная выборка разработчиков по количеству выпущенных игр
SELECT name, games_released FROM Developers ORDER BY games_released DESC;
-- Запрос 4: Выборка игр с выраженным в тысячах количеством игроков в пике
SELECT title, ROUND(peak_players/1000) thousands_of_players_in_peak FROM Games
-- Запрос 5: Запрос, который вычисляет среднюю оценку каждой игры и округляет до целого
SELECT g.title, ROUND(AVG(r.score)) AS average_score FROM Games g JOIN Ratings r ON g.game_id = r.game_id GROUP BY g.title;
-- Запрос 6: Выборка уникальных возрастных рейтингов
SELECT DISTINCT age_rating FROM Games;
-- Запрос 7: Псевдо-выборка для оценки выражения
SELECT (137*548) AS result;
-- Запрос 8: Очистка таблиц на диске и статистики от удаленных записей.
VACUUM FULL;
