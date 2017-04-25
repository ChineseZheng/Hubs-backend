class CreateApiV1AdminTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :api_v1_admin_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
