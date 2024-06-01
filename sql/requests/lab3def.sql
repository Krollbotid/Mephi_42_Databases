INSERT INTO Games (title, release_year, developer_id, publisher_id, age_rating, peak_players) VALUES
('Europa Universalis IV', 2013, 6, 7, '16+', 60000),
('Victoria III', 2022, 6, 7, '16+', 50000);

INSERT INTO GameGenres (game_id, genre_id) VALUES
(11, 4),  -- Strategy
(11, 5),  -- Simulation
(12, 4),  -- Strategy
(12, 5);  -- Simulation

WITH GenreReleaseCounts AS (
    SELECT
        gg.genre_id,
        g.release_year,
        COUNT(*) AS release_count
    FROM
        Games g
    JOIN
        GameGenres gg ON g.game_id = gg.game_id
    GROUP BY
        gg.genre_id, g.release_year
),
MaxYearReleases AS (
    SELECT
        genre_id,
        release_year AS max_release_year,
        release_count,
        ROW_NUMBER() OVER (PARTITION BY genre_id ORDER BY release_count DESC, release_year) AS rn
    FROM
        GenreReleaseCounts
),
MinYearReleases AS (
    SELECT
        genre_id,
        release_year AS min_release_year,
        release_count,
        ROW_NUMBER() OVER (PARTITION BY genre_id ORDER BY release_count, release_year) AS rn
    FROM
        GenreReleaseCounts
),
DeveloperSpecialization AS (
    SELECT
        gg.genre_id,
        g.developer_id,
        COUNT(*) AS genre_release_count
    FROM
        Games g
    JOIN
        GameGenres gg ON g.game_id = gg.game_id
    GROUP BY
        gg.genre_id, g.developer_id
),
TopDeveloperSpecialization AS (
    SELECT
        genre_id,
        developer_id,
        genre_release_count,
        ROW_NUMBER() OVER (PARTITION BY genre_id ORDER BY genre_release_count DESC) AS rn
    FROM
        DeveloperSpecialization
)
SELECT
    g.genre_name,
    MAXYR.max_release_year,
    MINYR.min_release_year,
    d.name AS top_developer
FROM
    Genres g
LEFT JOIN
    MaxYearReleases MAXYR ON g.genre_id = MAXYR.genre_id AND MAXYR.rn = 1
LEFT JOIN
    MinYearReleases MINYR ON g.genre_id = MINYR.genre_id AND MINYR.rn = 1
LEFT JOIN
    TopDeveloperSpecialization TDS ON g.genre_id = TDS.genre_id AND TDS.rn = 1
LEFT JOIN
    Developers d ON TDS.developer_id = d.developer_id
ORDER BY
    g.genre_name;
