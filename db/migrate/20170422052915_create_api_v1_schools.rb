class CreateApiV1Schools < ActiveRecord::Migration[5.0]
  def change
    create_table :api_v1_schools do |t|
      t.string :avatar
      t.string :name
      t.string :account
      t.string :password
      t.string :email
      t.text :description
      t.string :student_id_list
      t.string :teacher_id_list
      t.integer :teacher_count
      t.integer :student_count
      t.string :loading_info

      t.timestamps
    end
  end
end
