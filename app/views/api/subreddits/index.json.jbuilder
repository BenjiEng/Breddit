json.array! @subreddits do |subreddit|
  json.extract! subreddit, :id, :name, :description
end
