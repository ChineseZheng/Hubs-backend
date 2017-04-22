class CreateApiV1Teachers < ActiveRecord::Migration[5.0]
  def change
    create_table :api_v1_teachers do |t|
      t.string :avatar
      t.string :name
      t.string :account
      t.string :password
      t.string :email
      t.text :description
      t.integer :school_id
      t.string :student_id_list
      t.string :course_id_list
      t.string :upload_course_id_list
      t.string :loading_info

      t.timestamps
    end
  end
end
