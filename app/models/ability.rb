class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new 
    can :manage, :all if user.role == 'admin'
    can :read, :all if user.role == 'coffeeman'
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
