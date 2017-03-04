class Event < ApplicationRecord
  belongs_to :user
  has_many :contacts

  validates :address, presence: true
  geocoded_by :full_address

  after_validation :geocode

  def full_address
     return address
  end
end
