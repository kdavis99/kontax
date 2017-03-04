json.extract! event, :id, :s_time, :e_time, :name, :address, :note, :user_id, :created_at, :updated_at
json.url event_url(event, format: :json)
