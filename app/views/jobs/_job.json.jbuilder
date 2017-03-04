json.extract! job, :id, :company, :position, :location, :description, :app_link, :date_applied, :status, :note, :user_id, :created_at, :updated_at
json.url job_url(job, format: :json)
