INSERT INTO Games (title, release_year, developer_id, publisher_id, age_rating, peak_players) VALUES
('Test Game', 2013, 4, 1, '16+', 60000);

WITH DeveloperPublisherCount AS (
    SELECT
        dp.developer_id,
        COUNT(DISTINCT dp.publisher_id) AS publisher_count
    FROM
        DeveloperPublisherRelationships dp
    GROUP BY
        dp.developer_id
    HAVING
        COUNT(DISTINCT dp.publisher_id) >= 2
),
DeveloperGames AS (
    SELECT
        d.name AS developer_name,
        p.name AS publisher_name,
        g.peak_players,
        COUNT(g.game_id) AS games_released
    FROM
        Developers d
    JOIN
        DeveloperPublisherRelationships dp ON d.developer_id = dp.developer_id
    JOIN
        Publishers p ON dp.publisher_id = p.publisher_id
    JOIN
        Games g ON d.developer_id = g.developer_id AND p.publisher_id = g.publisher_id
    WHERE
        d.developer_id IN (SELECT developer_id FROM DeveloperPublisherCount)
    GROUP BY
        d.name,
        p.name,
        g.peak_players
)
SELECT
    developer_name,
    publisher_name,
    MAX(peak_players) AS max_peak_players,
    SUM(games_released) AS total_games_released
FROM
    DeveloperGames
GROUP BY
    developer_name,
    publisher_name
ORDER BY
    developer_name,
    publisher_name;
