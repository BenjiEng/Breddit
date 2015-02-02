# Schema Information

## subreddits
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
user_id     | integer   | not null, foreign key (belongs to user? will I need a master user to create all subs?)
title       | string    | not null


## posts
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
subreddit_id| integer   | not null, foreign key (belongs to subreddits)
author_id   | integer   | not null, foreign key (belongs to user)
title       | string    | not null, unique: true (no reposts!)
body        | string    | not null,
url         | string    | not null, 
upvotes     | integer   | not null, default: 1


## comments
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
body        | string    | not null, unique
author_id   | integer   | not null, foreign key (belongs to user)
post_id     | integer   | not null, foreign key (belongs to post)
upvotes     | integer   | not null, default: 1


## users
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
password_digest | string    | not null
session_token   | string    | not null, unique
(user has many subreddits, comments, posts)
