class PostPolicy < ApplicationPolicy
  def edit?
    !user.nil?
  end
  def update?
    !user.nil?
  end
  def create?
    !user.nil?
  end
  def destroy?
    !user.nil?
  end
  def new?
    !user.nil?
  end
  def index?
    return true
  end

  private

  def post
    record
  end  
end