json.extract! api_v1_parent, :id, :avatar, :name, :account, :password, :email, :description, :course_id_list, :children_id_list, :loading_info, :created_at, :updated_at
json.url api_v1_parent_url(api_v1_parent, format: :json)
