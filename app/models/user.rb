class User < ActiveRecord::Base
  acts_as_authentic

  has_many :payments, foreign_key: 'user_id'
  has_many :my_payments, foreign_key: 'from_user_id', class_name: Payment

  def fio
    "#{last_name} #{first_name} #{middle_name}"
  end

  def self.roles
    %w{admin coffeeman}
  end

  validates :role, inclusion: { :in => self.roles }
end
