class CreateParents < ActiveRecord::Migration[5.0]
  def change
    create_table :parents do |t|
      t.string :avatar
      t.string :name
      t.text :description
      t.string :account
      t.string :password
      t.string :email
      t.string :children_id_list

      t.timestamps
    end
  end
end
