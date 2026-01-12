CREATE TABLE ViewingHistory (
    history_id INT IDENTITY(1,1) PRIMARY KEY,
    user_id INT NOT NULL,
    movie_id INT NOT NULL,
    watched_on DATE DEFAULT GETDATE(),
    progress_percentage INT DEFAULT 0,
    CONSTRAINT FK_User FOREIGN KEY (user_id) REFERENCES Users(user_id),
    CONSTRAINT FK_Movie FOREIGN KEY (movie_id) REFERENCES Movies(movie_id)
);
