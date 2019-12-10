class FriendshipPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def create?
    (user.photo.present? && user.birthday.present?)
  end

  def destroy?
    true
  end

  def approve?
    true
  end

  def reject?
    true
  end
end
