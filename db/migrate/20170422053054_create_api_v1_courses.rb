class CreateApiV1Courses < ActiveRecord::Migration[5.0]
  def change
    create_table :api_v1_courses do |t|
      t.string :avatar
      t.string :name
      t.text :description
      t.string :category
      t.string :video_url
      t.integer :fans_count
      t.integer :uploader_id

      t.timestamps
    end
  end
end
