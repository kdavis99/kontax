class Job < ApplicationRecord
  belongs_to :user
  has_many :updates, dependent: :destroy
  has_many :contacts
end
