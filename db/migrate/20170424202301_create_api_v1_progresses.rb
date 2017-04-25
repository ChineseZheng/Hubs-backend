class CreateApiV1Progresses < ActiveRecord::Migration[5.0]
  def change
    create_table :api_v1_progresses do |t|
      t.text :description

      t.timestamps
    end
  end
end
