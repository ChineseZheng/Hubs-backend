json.extract! api_vi_course, :id, :avatar, :name, :description, :category, :video_url, :fans_count, :uploader_id, :created_at, :updated_at
json.url api_vi_course_url(api_vi_course, format: :json)
