json.array! @posts do |post|
  json.extract! post, :id, :title, :url, :content, :user_id, :sub_id
  json.subreddit_name post.subreddit.name
  json.subreddit_id post.subreddit.id


  json.user_name post.user.username

  json.vote_count post.get_upvotes.size
  json.comments_count post.comments.count
  json.time_ago time_ago_in_words(post.created_at)
end
