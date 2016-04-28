class User < ActiveRecord::Base
  acts_as_authentic

  def fio
    "#{last_name} #{first_name} #{middle_name}"
  end

  def self.roles
    %w{admin coffeeman}
  end

  validates :role, inclusion: { :in => self.roles }
end
