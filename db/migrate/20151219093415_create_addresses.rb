class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :address_1
      t.string :address_2
      t.string :city
      t.integer :state_id
      t.integer :country_id
      t.timestamps null: false
    end
  end
end
