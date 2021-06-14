# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    if user.present?
      can :manage, :all, :id => user.id
    else
      can :read, MedicalCenter
    end
  end
end
