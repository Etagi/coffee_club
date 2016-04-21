class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.reference :user
      t.timestamps null: false
    end
  end
end
