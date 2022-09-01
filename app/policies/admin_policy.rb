class AdminPolicy < ApplicationPolicy
  
  def edit?
    current_admin.present?
  end
  def destroy?
    current_admin.present?
  end
  def new?
    current_admin.present?
  end



end