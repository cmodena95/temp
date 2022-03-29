class PropertyPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    create?
  end

  def create?
    @user
  end
  
  def show?
    true
  end

  def destroy?
    @user
  end

  def edit?
    @user
  end

  def update?
    edit?
  end
end
