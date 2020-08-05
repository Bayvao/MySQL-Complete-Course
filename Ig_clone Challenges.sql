USE ig_clone;

desc comments;
desc follows;
desc likes;
desc photo_tags;
desc photos;
desc tags;
desc users;

-- Finding 5 oldest users -- 

SELECT * FROM users ORDER BY created_at LIMIT 5;

-- Most popular Registration Day

SELECT DAYNAME(created_at) As day, COUNT(*) AS total
FROM users
GROUP BY day
ORDER BY total DESC LIMIT 2;

-- Identify Inactive Users(Users Never posted a photo)

SELECT username FROM users
LEFT JOIN photos
	ON users.id = photos.user_id
WHERE photos.id IS NULL;

--  Most Liked Photo

SELECT photos.id AS photo_id, username, image_url, COUNT(*) AS total_likes 
FROM photos
INNER JOIN likes
	ON likes.photo_id = photos.id
INNER JOIN users
	ON photos.user_id = users.id
GROUP BY photos.id
ORDER BY total_likes DESC
LIMIT 1;

-- 5. Calculate average number of photos per user

SELECT (SELECT Count(*) 
        FROM   photos) / (SELECT Count(*) 
                          FROM   users) AS avg; 

-- FIVE Most popular used hashtags

SELECT tags.tag_name, COUNT(*) AS total 
FROM photo_tags
INNER JOIN tags
	ON photo_tags.tag_id=tags.id
GROUP BY tags.id
ORDER BY total DESC
LIMIT 5;

-- 7. Finding the bots - the users who have liked every single photo

SELECT username, 
       Count(*) AS num_likes 
FROM   users 
       INNER JOIN likes 
               ON users.id = likes.user_id 
GROUP  BY likes.user_id 
HAVING num_likes = (SELECT Count(*) 
                    FROM   photos); 




