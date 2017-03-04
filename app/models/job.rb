class Job < ApplicationRecord
  belongs_to :user
  has_many :contacts
  accepts_nested_attributes_for :contacts, allow_destroy: true
  has_many :updates, dependent: :destroy

	enum status: {applied_no_contact: 1, in_contact: 2, after_interview: 3, no_offer: 4, offer: 5}
end
