class Contact < ApplicationRecord
  belongs_to :user
  belongs_to :event, optional: true
  belongs_to :job, optional: true
end
