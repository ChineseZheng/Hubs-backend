json.extract! school, :id, :name, :account, :password, :email, :description, :teacher_id_list, :student_id_list, :created_at, :updated_at
json.url school_url(school, format: :json)
