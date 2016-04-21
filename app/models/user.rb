class User < ActiveRecord::Base
  acts_as_authentic

  def fio
  	"#{last_name} #{first_name} #{middle_name}"
  end
end
