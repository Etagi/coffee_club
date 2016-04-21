class CreatePayments < ActiveRecord::Migration
  def self.up
    create_table :payments do |t|
      t.integer :user_id, null: false
      t.integer :from_user_id
      t.float :money
      t.timestamps null: false
    end
  end

  def self.down
  	drop_table :payments
  end
end
