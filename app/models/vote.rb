class Vote < ActiveRecord::Base

  validates :user, presence: true
  # don't let the user vote twice
  validates :user_id, uniqueness: { scope: [:votable_id, :votable_type] }
  belongs_to :votable, polymorphic: true

  belongs_to(
    :user,
    class_name: "User",
    foreign_key: :voter_id,
    primary_key: :id
  )

  belongs_to(
    :post,
    class_name: "Post",
    foreign_key: :votable_id,
    primary_key: :id
  )

end
