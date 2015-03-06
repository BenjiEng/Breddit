class Subreddit < ActiveRecord::Base
  validates :name, :description, presence: true
  validates :name, uniqueness: true

  has_many(
    :posts,
    class_name: "Post",
    foreign_key: :sub_id,
    primary_key: :id
  )

  has_many(
    :subscriptions,
    class_name: "Subscription",
    foreign_key: :sub_id,
    primary_key: :id
  )

  has_many(
    :users,
    through: :subscriptions
  )

end
