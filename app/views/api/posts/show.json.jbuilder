json.extract! @post, :id, :title, :url, :content, :user_id, :sub_id
json.subreddit_name @post.subreddit.name
json.subreddit_id @post.subreddit.id

if current_user.id == @post.user_id
  json.owns_post true
end

json.comments @post.comments do |comment|
  json.partial!("api/comments/comment", :comment => comment)
  json.time_ago time_ago_in_words(comment.created_at)
end

json.vote_count @post.votes_for.size
