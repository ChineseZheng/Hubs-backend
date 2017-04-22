class CreateApiV1Students < ActiveRecord::Migration[5.0]
  def change
    create_table :api_v1_students do |t|
      t.string :avatar
      t.string :name
      t.string :account
      t.string :password
      t.string :email
      t.text :description
      t.string :course_id_list
      t.string :course_progress
      t.string :loading_info

      t.timestamps
    end
  end
end
