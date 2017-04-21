json.extract! student, :id, :name, :avatar, :account, :email, :description, :course_id_list, :course_progress, :loading_info, :created_at, :updated_at
json.url student_url(student, format: :json)
