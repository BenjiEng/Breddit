class User < ActiveRecord::Base

  acts_as_voter

  validates :username, :password_digest, :session_token, presence: true
  validates :password, length: {minimum: 6, allow_nil: true}
  validates :session_token, :username, uniqueness: true

  attr_reader :password
  before_validation :ensure_session_token

  has_many(
    :comments,
    class_name: "Comment",
    foreign_key: :user_id,
    primary_key: :id
  )

  has_many(
    :subscriptions,
    class_name: "Subscription",
    foreign_key: :user_id,
    primary_key: :id
  )

  has_many(
    :subreddits,
    through: :subscriptions
  )

  has_many(
    :votes,
    class_name: "Vote",
    foreign_key: :voter_id,
    primary_key: :id
  )

  has_many(
    :post_votes,
    class_name: "PostVote",
    foreign_key: :user_id,
    primary_key: :id
  )


  def self.find_by_credentials(username, password)
    user = User.find_by_username(username)
    return nil if user.nil?
    if user.valid_password?(password)
      return user
    else
      return nil
    end
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def valid_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def ensure_session_token
    self.session_token ||= SecureRandom::urlsafe_base64
  end

  def reset_session_token!
    self.session_token = SecureRandom::urlsafe_base64
    self.save!
    self.session_token
  end

end
