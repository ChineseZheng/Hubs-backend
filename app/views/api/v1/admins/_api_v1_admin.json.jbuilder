json.extract! api_v1_admin, :id, :account, :name, :email, :phone, :password, :admin_type_id, :created_at, :updated_at
json.url api_v1_admin_url(api_v1_admin, format: :json)
