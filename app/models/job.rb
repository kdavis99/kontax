class Job < ApplicationRecord
  belongs_to :user
  has_many :contacts
  accepts_nested_attributes_for :contacts, allow_destroy: true
  has_many :updates, dependent: :destroy
end
