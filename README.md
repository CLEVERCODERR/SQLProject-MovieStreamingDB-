# Movie Streaming Platform SQL Database

## Project Overview
This project is a **SQL database for a Movie Streaming Platform**, designed to showcase strong SQL skills including **table creation, relationships, constraints, sample data population, and complex queries**.

This project is a **SQL database for a Movie Streaming Platform**, designed to showcase strong SQL skills including **table creation, relationships, constraints, sample data population, and complex queries**. The database models a simple movie streaming platform where users can subscribe, watch movies, and leave reviews.

---

## Database Structure

### Users
| Column | Type | Description |
|--------|------|-------------|
| user_id | INT (PK, Identity) | Unique user identifier |
| name | VARCHAR(100) | Name of the user |
| email | VARCHAR(100) | Unique email |
| subscription_type | VARCHAR(50) | Subscription plan (Basic, Premium, etc.) |
| join_date | DATE | Date user joined (default: current date) |

---

### Movies
| Column | Type | Description |
|--------|------|-------------|
| movie_id | INT (PK, Identity) | Unique movie identifier |
| title | VARCHAR(255) | Movie title |
| genre | VARCHAR(50) | Movie genre |
| release_year | INT | Year the movie was released |
| duration_minutes | INT | Movie duration in minutes |

---

### ViewingHistory
| Column | Type | Description |
|--------|------|-------------|
| history_id | INT (PK, Identity) | Unique history entry |
| user_id | INT (FK → Users) | User who watched the movie |
| movie_id | INT (FK → Movies) | Movie watched |
| watched_on | DATE | Date watched (default: current date) |
| progress_percentage | INT | How much of the movie was watched |

---

### Reviews
| Column | Type | Description |
|--------|------|-------------|
| review_id | INT (PK, Identity) | Unique review identifier |
| user_id | INT (FK → Users) | User leaving the review |
| movie_id | INT (FK → Movies) | Movie being reviewed |
| rating | INT (1-5) | Movie rating |
| comment | VARCHAR(500) | Optional review comment |
| review_date | DATE | Date review was made (default: current date) |
