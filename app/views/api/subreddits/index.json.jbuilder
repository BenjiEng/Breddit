json.array! @subreddits do |subreddit|
  json.extract! subreddit, :id, :name, :description

  subreddit.subscriptions.each do |subscription|
    if current_user.id == subscription.user_id
      json.subbed true
      json.subscription_id subscription.id
      json.user_id current_user.id
      json.sub_id subreddit.id
    else
      json.subbed false
    end
  end

end
