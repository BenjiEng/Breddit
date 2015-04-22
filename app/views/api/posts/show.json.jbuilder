json.extract! @post, :id, :title, :url, :content, :user_id, :sub_id
json.subreddit_name @post.subreddit.name
json.subreddit_id @post.subreddit.id
json.comments_count @post.comments.count
json.user_name @post.user.username

if current_user.id == @post.user_id
  json.owns_post true
end

if current_user
  json.logged_in true
else
  json.logged_in false
end

if current_user
  if current_user.voted_as_when_voted_for(@post) == true
    json.up_voted true
  elsif current_user.voted_as_when_voted_for(@post) ==  false
    json.up_voted false
  else
    json.up_voted nil
  end
else
  json.up_voted nil
end

json.comments @post.comments do |comment|
  json.partial!("api/comments/comment", :comment => comment)
  json.time_ago time_ago_in_words(comment.created_at)
end

json.vote_count @post.get_upvotes.size
