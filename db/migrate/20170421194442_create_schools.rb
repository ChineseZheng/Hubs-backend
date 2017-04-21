class CreateSchools < ActiveRecord::Migration[5.0]
  def change
    create_table :schools do |t|
      t.string :name
      t.string :account
      t.string :password
      t.string :email
      t.text :description
      t.string :teacher_id_list
      t.string :student_id_list

      t.timestamps
    end
  end
end
