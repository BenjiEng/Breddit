json.array! @posts do |post|
  json.extract! post, :id, :title, :url, :content, :user_id
  json.comments post.comments do |comment|
    json.extract! comment, :id, :body, :user_id, :post_id, :parent_comment_id
    json.time_ago time_ago_in_words(comment.created_at)
  end
end
