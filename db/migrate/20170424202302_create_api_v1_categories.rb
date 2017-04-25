class CreateApiV1Categories < ActiveRecord::Migration[5.0]
  def change
    create_table :api_v1_categories do |t|
      t.string :name
      t.string :avatar_url
      t.text :instruction
      t.text :description

      t.timestamps
    end
  end
end
