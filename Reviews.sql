CREATE TABLE Reviews (
    review_id INT IDENTITY(1,1) PRIMARY KEY,
    user_id INT NOT NULL,
    movie_id INT NOT NULL,
    rating INT CHECK (rating >= 1 AND rating <= 5),
    comment NVARCHAR(500),
    review_date DATE DEFAULT GETDATE(),
    CONSTRAINT FK_ReviewUser FOREIGN KEY (user_id) REFERENCES Users(user_id),
    CONSTRAINT FK_ReviewMovie FOREIGN KEY (movie_id) REFERENCES Movies(movie_id)
);
