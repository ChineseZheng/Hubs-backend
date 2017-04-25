class CreateApiV1UserTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :api_v1_user_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
