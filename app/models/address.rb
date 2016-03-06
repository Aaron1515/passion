class Address < ActiveRecord::Base
  has_many :users
  belongs_to :guest

  validates :address, presence: true
end
