json.extract! api_v1_course, :id, :name, :avatar_url, :category_id, :description, :instruction, :vedio_url, :vedio_avatar_url, :created_at, :updated_at
json.url api_v1_course_url(api_v1_course, format: :json)
