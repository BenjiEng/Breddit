json.extract! @subreddit, :id, :name, :description

json.post @subreddit.posts do |post|
  json.extract! post, :id, :title, :url, :content, :user_id, :sub_id

  json.user_name post.user.username

  json.vote_count post.get_upvotes.size
  json.comments_count post.comments.count
  json.time_ago time_ago_in_words(post.created_at)
  if current_user
    if current_user.voted_as_when_voted_for(post) == true
      json.up_voted true
    elsif current_user.voted_as_when_voted_for(post) ==  false
      json.up_voted false
    else
      json.up_voted nil
    end
  else
    json.up_voted nil
  end

  if current_user
    json.logged_in true
  else
    json.logged_in false
  end
end
