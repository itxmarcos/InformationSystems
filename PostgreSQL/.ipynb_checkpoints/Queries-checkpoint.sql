# SIMPLE QUERIES
SELECT (tweets.created_at, tweets.text) FROM tweets WHERE CAST(created_at as date) BETWEEN '20200101' and '20200201'
#################
SELECT (users.followers_count, users.screen_name) FROM users WHERE users.followers_count>=CAST(40 AS varchar(1))
# JOIN QUERIES
SELECT (users.screen_name, tweets.text) FROM tweets INNER JOIN users ON users.followers_count>=CAST(30 AS varchar(1)), tweets.favourite_count>=CAST(5 AS varchar(1))