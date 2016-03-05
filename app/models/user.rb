class User < ActiveRecord::Base

  has_many :registeries
  has_many :guests

  validates :p1_first_name, :p1_first_name, :p2_first_name, :p2_last_name, :home_address, :wedding_location,  presence: true
  validates :wedding_name, presence: true, uniqueness: true
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
