class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :avatar
      t.string :account
      t.string :email
      t.text :description
      t.string :course_id_list
      t.text :course_progress
      t.string :loading_info

      t.timestamps
    end
  end
end
