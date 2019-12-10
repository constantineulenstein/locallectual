class CommentPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    (user.photo.present? && user.birthday.present?)
  end

  def destroy?
    record.user_id == user.id
  end
end
