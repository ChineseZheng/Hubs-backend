json.extract! api_v1_student, :id, :avatar, :name, :account, :password, :email, :description, :course_id_list, :course_progress, :loading_info, :created_at, :updated_at
json.url api_v1_student_url(api_v1_student, format: :json)
