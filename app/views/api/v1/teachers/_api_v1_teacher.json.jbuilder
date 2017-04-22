json.extract! api_v1_teacher, :id, :avatar, :name, :account, :password, :email, :description, :school_id, :student_id_list, :course_id_list, :upload_course_id_list, :loading_info, :created_at, :updated_at
json.url api_v1_teacher_url(api_v1_teacher, format: :json)
