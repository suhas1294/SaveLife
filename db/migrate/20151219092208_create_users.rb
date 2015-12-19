class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :auth_token
      t.string :device_token
      t.string :device_id
      t.string :password_digest
      t.timestamps null: false
    end
  end
end
