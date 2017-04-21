class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.text :description
      t.string :avatar
      t.integer :course_amount

      t.timestamps
    end
  end
end
