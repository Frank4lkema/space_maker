class PicturePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def destroy?
    Space.find(record.space_id).user_id == user.id
  end
end
