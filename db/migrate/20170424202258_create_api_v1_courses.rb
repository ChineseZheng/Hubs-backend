class CreateApiV1Courses < ActiveRecord::Migration[5.0]
  def change
    create_table :api_v1_courses do |t|
      t.string :name
      t.string :avatar_url
      t.integer :category_id
      t.text :description
      t.text :instruction
      t.string :vedio_url
      t.string :vedio_avatar_url

      t.timestamps
    end
  end
end
