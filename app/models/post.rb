class Post < ActiveRecord::Base
  acts_as_votable

  validates :title, :content, presence: true

  has_many(
    :comments,
    class_name: "Comment",
    foreign_key: :post_id,
    primary_key: :id
  )

  belongs_to(
    :subreddit,
    class_name: "Subreddit",
    foreign_key: :sub_id,
    primary_key: :id
  )

  belongs_to(
    :user,
    class_name: "User",
    foreign_key: :user_id,
    primary_key: :id
  )

end
