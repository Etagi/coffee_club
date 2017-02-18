class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new 
    can :manage, :all if user.role == 'admin'
    can :read, :all if user.role == 'coffeeman'
  end
end
