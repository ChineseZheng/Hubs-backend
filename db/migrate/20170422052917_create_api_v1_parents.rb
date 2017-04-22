class CreateApiV1Parents < ActiveRecord::Migration[5.0]
  def change
    create_table :api_v1_parents do |t|
      t.string :avatar
      t.string :name
      t.string :account
      t.string :password
      t.string :email
      t.text :description
      t.string :course_id_list
      t.string :children_id_list
      t.string :loading_info

      t.timestamps
    end
  end
end
