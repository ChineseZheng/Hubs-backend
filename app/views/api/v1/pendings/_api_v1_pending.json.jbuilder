json.extract! api_v1_pending, :id, :avatar_url, :account, :name, :password, :email, :phone, :description, :user_type_id, :created_at, :updated_at
json.url api_v1_pending_url(api_v1_pending, format: :json)
