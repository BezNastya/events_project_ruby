# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.present?
    can [:read, :create, :register], Event
    can [:read, :create], Address
    can [:update, :destroy], Event, user: user
    can [:update, :destroy], Address, event: { user: user }
    return unless user.admin?
    can :manage, :all
  end
end
