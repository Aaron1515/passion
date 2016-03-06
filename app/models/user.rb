class User < ActiveRecord::Base

  has_many :guests
  has_many :addresses
  belongs_to :registery
  belongs_to :checklist

  validates :p1_first_name, :p1_first_name, :p2_first_name, :p2_last_name, presence: true
  validates :wedding_name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true, email: true
  validates :password_hash, presence: true

  def congratulation
    self.wedded = true
  end

  def guests
    self.guests.all
  end

# Add new guest to registery and wedding list
  def invite(name, email, address, invited_party)
    # Guest.create(name: name, email: email, address: address, invited_party: invited_party, user_id: self.id)
  end
s
# Uninvte people to your wedding
  def uninvite(guest_id)
    # guest = self.guests.find_by(guest_id: guest_id)
    # guest.destry
  end

# Generate a list of guest to a cvs file
  def generate_list_to_file
    # csv_string = CSV.generate do |csv|
    #   csv << ["name", "email", "address", "invited_part"]
    #   self.guests.all.each do |guest|
    #     csv << [guest.name, guest.email, guest.address, guest.invited_part]
    #   end#end each guest
    # end #end csv_string
    # return csv_string
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
