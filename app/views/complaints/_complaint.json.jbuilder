json.extract! complaint, :id, :company_id, :user_id, :created_at, :updated_at
json.url complaint_url(complaint, format: :json)
