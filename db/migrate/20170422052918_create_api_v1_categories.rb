class CreateApiV1Categories < ActiveRecord::Migration[5.0]
  def change
    create_table :api_v1_categories do |t|
      t.string :avatar
      t.string :name
      t.text :description
      t.integer :course_count
      t.integer :master_id

      t.timestamps
    end
  end
end
