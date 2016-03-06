class User < ActiveRecord::Base
  has_many :guests
  has_many :addresses

  belongs_to :registery
  belongs_to :checklist









  def congratulation
    self.wedded = true
  end

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def authenticate(expected_password)
    return self.password == expected_password
  end

end