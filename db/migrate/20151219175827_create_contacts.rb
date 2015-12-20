class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.integer :blood_group_id
      t.string :phone_number
      t.string :when
      t.timestamps null: false
    end
  end
end
