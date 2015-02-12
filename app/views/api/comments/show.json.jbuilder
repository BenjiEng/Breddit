json.partial!("comment", :comment => @comment)
json.time_ago time_ago_in_words(@comment.created_at)

json.com_vote_count @comment.get_upvotes.size
