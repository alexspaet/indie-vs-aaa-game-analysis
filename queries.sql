-- View all data
SELECT *
FROM games;

-- Total revenue by category
SELECT category,
       ROUND(SUM(revenue_millions), 2) AS total_revenue_millions
FROM games
GROUP BY category
ORDER BY total_revenue_millions DESC;

-- Average revenue per game
SELECT category,
       ROUND(AVG(revenue_millions), 2) AS avg_revenue_millions
FROM games
GROUP BY category
ORDER BY avg_revenue_millions DESC;

-- Average rating by category
SELECT category,
       ROUND(AVG(metacritic_score), 2) AS avg_score
FROM games
GROUP BY category
ORDER BY avg_score DESC;

-- Top 5 highest revenue games
SELECT title,
       category,
       revenue_millions
FROM games
ORDER BY revenue_millions DESC
LIMIT 5;

-- Revenue by year
SELECT release_year,
       ROUND(SUM(revenue_millions), 2) AS yearly_revenue
FROM games
GROUP BY release_year
ORDER BY release_year;

-- High-rated indie games
SELECT title,
       metacritic_score,
       revenue_millions
FROM games
WHERE category = 'Indie'
  AND metacritic_score >= 90
ORDER BY revenue_millions DESC;

-- AAA games with lower ratings but high revenue
SELECT title,
       metacritic_score,
       revenue_millions
FROM games
WHERE category = 'AAA'
  AND metacritic_score < 90
ORDER BY revenue_millions DESC;
