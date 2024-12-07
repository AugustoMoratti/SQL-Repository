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


-- op 3 usuarios con mayor numero de seguidores --
SELECT following_id, COUNT(follower_id) AS followers
FROM followers 
GROUP BY following_id
ORDER BY followers DESC
LIMIT 3;


-- Top 3 usuarios con mayor numero de seguidores con Join --

SELECT user_id, user_handle, COUNT(follower_id) AS followers FROM followers
JOIN users
ON user_id = following_id
GROUP BY following_id
ORDER BY COUNT(follower_id) DESC
LIMIT 3; 



