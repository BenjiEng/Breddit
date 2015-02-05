class Subreddit < ActiveRecord::Base
  validates :title, :user_id, presence: true
end
