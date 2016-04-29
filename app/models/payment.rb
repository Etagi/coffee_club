class Payment < ActiveRecord::Base
  belongs_to :user, foreign_key: 'user_id'
  belongs_to :from_user, foreign_key: 'from_user_id', class_name: User

  def self.summ
    out = 0
    all.each{ |payment| out = out + payment.money.to_i }
    out
  end
end
