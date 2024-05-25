class User < ActiveRecord::Base
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true
  validates :score, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :see_correct, inclusion: { in: [true, false] }
  has_many :question_users
  has_many :questions, through: :question_users

  # authenticates user
  def authenticates(password)
    self.password == password
  end

end