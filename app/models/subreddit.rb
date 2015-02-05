class Subreddit < ActiveRecord::Base
  validates :name, :description, presence: true#moderator?
  validates :name, uniqueness: true
end
