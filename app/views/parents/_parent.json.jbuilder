json.extract! parent, :id, :avatar, :name, :description, :account, :password, :email, :children_id_list, :created_at, :updated_at
json.url parent_url(parent, format: :json)
