json.extract! api_v1_school, :id, :avatar, :name, :account, :password, :email, :description, :student_id_list, :teacher_id_list, :teacher_count, :student_count, :loading_info, :created_at, :updated_at
json.url api_v1_school_url(api_v1_school, format: :json)
