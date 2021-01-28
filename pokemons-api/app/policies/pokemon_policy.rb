class PokemonPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def update?
    record.user == user
  end

  def create?
  	# Any logged in user can create a pokemon
    !user.nil?
  end

  def destroy?
    update?
  end
end