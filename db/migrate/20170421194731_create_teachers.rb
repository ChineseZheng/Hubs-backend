class CreateTeachers < ActiveRecord::Migration[5.0]
  def change
    create_table :teachers do |t|
      t.string :avatar
      t.string :name
      t.string :account
      t.string :password
      t.string :email
      t.text :description
      t.string :upload_course_id_list
      t.string :concern_course_id_list
      t.integer :school_id

      t.timestamps
    end
  end
end
