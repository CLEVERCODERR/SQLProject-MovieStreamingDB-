# Movie Streaming Platform SQL Database

## Project Overview
This project is a **SQL database for a Movie Streaming Platform**, designed to showcase strong SQL skills including **table creation, relationships, constraints, sample data population, and complex queries**.  

The database models a simple movie streaming platform where users can subscribe, watch movies, and leave reviews. It is ideal as a **resume project** or a **portfolio example** for demonstrating SQL proficiency to recruiters and co-op employers.

---

## Database Structure

### Tables

1. **Users**
| Column | Type | Description |
|--------|------|-------------|
| user_id | INT (PK, Identity) | Unique user identifier |
| name | VARCHAR(100) | Name of the user |
| email | VARCHAR(100) | Unique email |
| subscription_type | VARCHAR(50) | Subscription plan (Basic, Premium, etc.) |
| join_date | DATE | Date user joined (default: current date) |

2. **Movies**
| Column | Type | Description |
|--------|------|-------------|
| movie_id | INT (PK, Identity) | Unique movie identifier |
| title | VARCHAR(255) | Movie title |
| genre | VARCHAR(50) | Movie genre |
| release_year | INT | Year the movie was released |
| duration_minutes | INT | Movie duration in minutes |

3. **ViewingHistory**
| Column | Type | Description |
|--------|------|-------------|
| history_id | INT (PK, Identity) | Unique history entry |
| user_id | INT (FK → Users) | User who watched the movie |
| movie_id | INT (FK → Movies) | Movie watched |
| watched_on | DATE | Date watched (default: current date) |
| progress_percentage | INT | How much of the movie was watched |

4. **Reviews**
| Column | Type | Description |
|--------|------|-------------|
| review_id | INT (PK, Identity) | Unique review identifier |
| user_id | INT (FK → Users) | User leaving the review |
| movie_id | INT (FK → Movies) | Movie being reviewed |
| rating | INT (1-5) | Movie rating |
| comment | VARCHAR(500) | Optional review comment |
| review_date | DATE | Date review was made (default: current date) |

---

## Sample Data
The database includes **sample users, movies, viewing history, and reviews** to allow testing and querying right away. Example:

- Users: Alice Smith (Premium), Bob Johnson (Basic)  
- Movies: Inception, The Godfather  
- Viewing history and reviews included for demonstration

---

## Example Queries

**Top 5 Most-Watched Movies**
```sql
SELECT m.title, COUNT(vh.movie_id) AS views
FROM ViewingHistory vh
JOIN Movies m ON vh.movie_id = m.movie_id
GROUP BY m.title
ORDER BY views DESC;
