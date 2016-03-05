class Registery < ActiveRecord::Base

  belongs_to :user

  validates :item, presence: true

end
