# Indie vs AAA Game Revenue & Trends Analysis

A SQL-based data analysis project comparing indie and AAA video games in terms of revenue, ratings, and market trends.

## Objective
Analyze game industry data to compare the performance of indie and AAA games and identify patterns in revenue and critical reception.

## Dataset
The dataset includes:
- Game title
- Studio
- Category (Indie / AAA)
- Release year
- Platform
- Price
- Units sold
- Revenue
- Metacritic score

## What I analyzed
- Total revenue by category
- Average revenue per game
- Average review scores
- Top-performing titles
- Revenue trends over time



## Example Query

    SELECT category,
           ROUND(SUM(revenue_millions), 2) AS total_revenue_millions
    FROM games
    GROUP BY category
    ORDER BY total_revenue_millions DESC;

日本語
インディーゲームとAAAゲームの売上・評価・傾向をSQLで比較分析したプロジェクトです。ゲームデータをもとに、カテゴリごとの収益性や評価の違いを明確にしました。
