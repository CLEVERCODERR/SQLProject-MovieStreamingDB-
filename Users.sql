CREATE TABLE Users (
    user_id INT IDENTITY(1,1) PRIMARY KEY,
    name NVARCHAR(100) NOT NULL,
    email NVARCHAR(100) NOT NULL UNIQUE,
    subscription_type NVARCHAR(50),
    join_date DATE DEFAULT GETDATE()
);
