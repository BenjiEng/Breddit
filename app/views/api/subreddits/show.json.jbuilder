json.extract! @subreddit, :id, :name, :description

@subreddit.subscriptions.each do |subscription|
  if subscription.user_id == current_user.id
    json.subscription_id subscription.id
  end
end
