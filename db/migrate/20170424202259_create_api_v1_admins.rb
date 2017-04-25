class CreateApiV1Admins < ActiveRecord::Migration[5.0]
  def change
    create_table :api_v1_admins do |t|
      t.string :account
      t.string :name
      t.string :email
      t.string :phone
      t.string :password
      t.integer :admin_type_id

      t.timestamps
    end
  end
end
