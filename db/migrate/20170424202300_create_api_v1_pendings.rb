class CreateApiV1Pendings < ActiveRecord::Migration[5.0]
  def change
    create_table :api_v1_pendings do |t|
      t.string :avatar_url
      t.string :account
      t.string :name
      t.string :password
      t.string :email
      t.string :phone
      t.string :description
      t.integer :user_type_id

      t.timestamps
    end
  end
end
