json.extract! contact, :id, :name, :email, :phone, :company, :position, :note, :user_id, :event_id, :job_id, :created_at, :updated_at
json.url contact_url(contact, format: :json)
