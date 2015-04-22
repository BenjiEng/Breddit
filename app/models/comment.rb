class Comment < ActiveRecord::Base
  acts_as_votable

  validates :body, :post_id, :user_id, presence: true

  belongs_to(
    :user,
    class_name: "User",
    foreign_key: :user_id,
    primary_key: :id
  )

  belongs_to(
    :post,
    class_name: "Post",
    foreign_key: :post_id,
    primary_key: :id
  )

  belongs_to(
    :parent_comment,
    class_name: "Comment",
    foreign_key: :parent_comment_id,
    primary_key: :id
  )


end
