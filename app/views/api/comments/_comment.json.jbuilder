json.(comment, :id, :user_id, :post_id, :body, :created_at, :updated_at)
json.time_ago time_ago_in_words(comment.created_at)
json.com_vote_count comment.get_upvotes.size
json.author comment.user.username

if current_user.id == comment.user_id
  json.owns_comment true
end
