class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new 
    if user.admin?
      can :manage, :all
    else
      can :read, :all
    end
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
