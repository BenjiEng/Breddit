class Subscription < ActiveRecord::Base
  validates :user_id, :sub_id, presence: true

  belongs_to :user, class_name: "User"

  belongs_to :subreddit, class_name: "Subreddit"

end
