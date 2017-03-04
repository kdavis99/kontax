class Job < ApplicationRecord
  belongs_to :user
  has_many :contacts
  has_many :updates, dependent: :destroy
end
