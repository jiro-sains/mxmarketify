class CreateCampaigns < ActiveRecord::Migration[5.0]
  def change
    create_table :campaigns do |t|
      t.string :name
      t.text :description
      t.integer :user_id
      t.timestamps
    end
    add_index :campaigns, :user_id
  end
end
