class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string    :last_name
      t.string    :first_name
      t.string    :middle_name
      t.integer   :ries_id
      t.string    :email
      t.string    :role
      t.string    :crypted_password
      t.string    :password_salt
      t.integer   :login_count, default: 0, null: false
      t.integer   :failed_login_count, default: 0, null: false
      t.datetime  :last_request_at
      t.datetime  :current_login_at
      t.datetime  :last_login_at
      t.string    :current_login_ip
      t.string    :last_login_ip
      t.string    :persistence_token
    end

    User.new({
      last_name: 'Админов', 
      first_name: 'Админ', 
      middle_name: 'Админович', 
      ries_id: '1114', 
      email: 'admin@example.com',
      role: 'admin', 
      password: '12345678', 
      password_confirmation: '12345678'
    }).save
  end

  def self.down
  	drop_table :users
  end
end
