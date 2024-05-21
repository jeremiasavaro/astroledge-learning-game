class User < ActiveRecord::Base
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true
  validates :score, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :actual_level, numericality: { only_integer: true, greater_than_or_equal_to: 1 }
  has_many :questions_users
  has_many :questions, through: :questions_users

  # authenticates user
  def authenticates(password)
    self.password == password
  end
end
