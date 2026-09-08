# Write your MySQL query statement below
-- Select tweet IDs
SELECT tweet_id

-- From Tweets table
FROM Tweets

-- LENGTH() counts characters
WHERE LENGTH(content) > 15;