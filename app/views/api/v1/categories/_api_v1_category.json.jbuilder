json.extract! api_v1_category, :id, :name, :avatar_url, :instruction, :description, :created_at, :updated_at
json.url api_v1_category_url(api_v1_category, format: :json)
