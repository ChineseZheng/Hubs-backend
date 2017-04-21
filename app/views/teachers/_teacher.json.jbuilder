json.extract! teacher, :id, :avatar, :name, :account, :password, :emial, :description, :upload_course_id_list, :concern_course_id_list, :school_id, :created_at, :updated_at
json.url teacher_url(teacher, format: :json)
