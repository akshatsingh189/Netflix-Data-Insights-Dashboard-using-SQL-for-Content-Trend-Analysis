# Netflix Data Insights Dashboard (SQL)

A SQL-based data analysis project exploring Netflix's catalog of **8,000+ titles** to uncover content trends, audience preferences, and regional insights. The queries address **15+ real-world business questions**, including genre popularity, actor performance, release trends, and the contribution of Indian content to Netflix’s library.

---

## Key Insights & Analysis
- **Content Distribution** – Movies vs TV Shows analysis.
- **Rating Trends** – Distribution of content ratings by type and country.
- **Yearly Release Trends** – Growth analysis over the last 5 years.
- **Top Genres & Countries** – Identifying global and regional popularity.
- **Longest Duration Content** – Tracking longest-running shows/movies.
- **Regional Focus** – Share of Indian content in Netflix's catalog.
- **Celebrity & Director Analysis** – Top contributors to Netflix.
- **Special Filters** – Documentaries, violent content, niche topics.

---

## Questions & Queries Table

| #  | Business Question | SQL Concepts Used | Key Insight |
|----|------------------|-------------------|-------------|
| 1  | Count total movies and TV shows | `GROUP BY`, `COUNT` | Understand overall content split. |
| 2  | Count content by type and rating | `GROUP BY`, `ORDER BY` | Identify rating distribution per category. |
| 3  | Find movies released in 2020 | `WHERE` filter | Year-specific release analysis. |
| 4  | Top 5 countries by content count | `STRING_TO_ARRAY`, `UNNEST` | Detect regions with highest content production. |
| 5  | Longest movie duration | `MAX()` | Identify the longest movie available. |
| 6  | Content released in last 5 years | `INTERVAL`, `TO_DATE` | Trend analysis for recent years. |
| 7  | Most frequent directors | `STRING_TO_ARRAY`, `UNNEST`, `GROUP BY` | Discover top directors. |
| 8  | TV shows with more than 5 seasons | `SPLIT_PART`, type casting | Identify long-running series. |
| 9  | Most common genres | `UNNEST`, `COUNT` | Determine content category trends. |
| 10 | Contribution of Indian content | `EXTRACT`, `ROUND` | Track growth and share of Indian titles. |
| 11 | Movies in “Documentaries” genre | `ILIKE` filter | Filter niche genres. |
| 12 | Find missing director data | `IS NULL` | Detect incomplete metadata. |
| 13 | Salman Khan movies post-2014 | `ILIKE`, year filter | Actor-specific filmography check. |
| 14 | Top 10 Indian actors by appearances | `UNNEST`, `COUNT`, `LIMIT` | Rank most featured Indian actors. |
| 15 | Titles with violence/kill in description | `ILIKE` | Identify mature/violent content. |

---

## Tech Stack
- **PostgreSQL** – Query execution and data analysis
- **SQL Functions** – `UNNEST`, `STRING_TO_ARRAY`, `SPLIT_PART`, `EXTRACT`, `TO_DATE`
- **Aggregate Functions** – `COUNT`, `ROUND`, `MAX`
- **Conditional Filtering** – `ILIKE`, `INTERVAL`, `IS NULL`

---

## Project Structure
```
├── netflix_titles.csv    # Netflix dataset
├── Netflix_Project.sql   # All SQL queries for analysis
├── README.md             # Project documentation
```

---


## Setup & Usage
1. Clone the repository:  
   ```bash
   git clone https://github.com/yourusername/netflix-sql-analysis.git
   ```
2. Import `netflix_titles.csv` into PostgreSQL.
3. Open `Netflix_Project.sql` in your SQL editor.
4. Execute queries to reproduce results.

---

## Contact
For collaboration or feedback:  
**Email:** akshat.singh1895@gmail.com
**LinkedIn:** (https://www.linkedin.com/in/akshat-singh-39836920a?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=ios_app) 
