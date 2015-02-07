json.(comment, :id, :post_id, :body, :created_at, :updated_at)
json.time_ago time_ago_in_words(comment.created_at)
