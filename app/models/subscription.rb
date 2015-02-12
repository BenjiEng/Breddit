class Subscription < ActiveRecord::Base
  validates :user_id, :sub_id, presence: true

  belongs_to(
    :user,
    class_name: "User",
    foreign_key: :user_id,
    primary_key: :id
  )

  belongs_to(
    :subreddit,
    class_name: "Subreddit",
    foreign_key: :sub_id,
    primary_key: :id
  )

end
