json.partial!("comment", :comment => @comment)
json.time_ago time_ago_in_words(@comment.created_at)

json.com_vote_count @comment.get_upvotes.size

if current_user.id == @comment.user_id
  json.owns_comment true
end
