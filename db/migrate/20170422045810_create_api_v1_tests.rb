class CreateApiV1Tests < ActiveRecord::Migration[5.0]
  def change
    create_table :api_v1_tests do |t|

      t.timestamps
    end
  end
end
