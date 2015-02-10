class UserVote < ActiveRecord::Base
  validates :user, presence: true
  # don't let the user vote twice
  validates :user_id, uniqueness: { scope: [:votable_id, :votable_type] } #what is this?

  belongs_to :votable, polymorphic: true

  belongs_to (
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
end
