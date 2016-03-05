class Guest < ActiveRecord::Base

  belongs_to :user

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true, email: true
  validates :password_hash, presence: true

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
