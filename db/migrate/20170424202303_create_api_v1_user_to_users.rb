class CreateApiV1UserToUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :api_v1_user_to_users do |t|
      t.integer :fans_user_id
      t.integer :star_user_id

      t.timestamps
    end
  end
end
