class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.integer :concern_amount
      t.string :avatar
      t.text :description
      t.integer :category_id
      t.string :video_url

      t.timestamps
    end
  end
end
