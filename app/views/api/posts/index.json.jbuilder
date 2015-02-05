json.array! @posts do |post|
  json.extract! post, :id, :title, :url, :content, :user_id
end
