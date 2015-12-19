class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.integer :address_id
      t.integer :blood_group_id
      t.string :mobile_number
      t.string :other_number
      t.string :image
      t.timestamps  null: false
    end
  end
end
