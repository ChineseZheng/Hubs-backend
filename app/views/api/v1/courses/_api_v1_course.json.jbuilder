json.extract! api_v1_course, :id, :avatar, :name, :description, :category, :video_url, :fans_count, :uploader_id, :created_at, :updated_at
json.url api_v1_course_url(api_v1_course, format: :json)
