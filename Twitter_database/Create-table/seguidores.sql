USE twitter_db;
CREATE TABLE followers (
	follower_id INT NOT NULL,
    following_id INT NOT NULL,
    FOREIGN KEY(follower_id) REFERENCES users(user_id),
    FOREIGN KEY(following_id) REFERENCES users(user_id),
    PRIMARY KEY(follower_id, following_id)
);

ALTER TABLE followers
ADD CONSTRAINT check_follower_id 
CHEcK (follower_id <> following_id);

INSERT INTO followers (follower_id, following_id)
VALUES (1,2) ,(2,1), (3,1), (4,1);

