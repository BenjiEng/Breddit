class Post < ActiveRecord::Base
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

end
