class User < ActiveRecord::Base
  has_secure_password

  def self.authenticate(username, password)
    user = find_by(username: username)
    user&.authenticate(password)
  end

end
