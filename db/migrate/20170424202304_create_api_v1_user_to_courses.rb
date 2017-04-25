class CreateApiV1UserToCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :api_v1_user_to_courses do |t|
      t.integer :user_id
      t.integer :course_id
      t.integer :category_id

      t.timestamps
    end
  end
end
