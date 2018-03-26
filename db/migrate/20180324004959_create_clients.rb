class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :company
      t.string :title
      t.string :telephone
      t.string :email
      t.boolean :decision_maker
      t.timestamps
    end
  end
end
