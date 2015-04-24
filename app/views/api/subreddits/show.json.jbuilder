json.extract! @subreddit, :id, :name, :description

json.array! @subreddit.posts do |post|
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
end
