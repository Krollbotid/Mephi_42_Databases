INSERT INTO Games (title, release_year, developer_id, publisher_id, age_rating, peak_players) VALUES
	('Test game', 2018, 9, 8, '13+', 1111);

WITH ReleaseCounts AS (
    SELECT
        publisher_id,
        release_year,
        COUNT(*) AS release_count
    FROM
        Games
    GROUP BY
        publisher_id,
        release_year
),
RankedReleases AS (
    SELECT
        publisher_id,
        release_year,
        release_count,
        ROW_NUMBER() OVER (PARTITION BY publisher_id ORDER BY release_count DESC) AS rn
    FROM
        ReleaseCounts
)
SELECT
    publisher_id,
    release_year,
    release_count
FROM
    RankedReleases
WHERE
    rn = 1
ORDER BY
    publisher_id;
