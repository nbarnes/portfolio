class ProjectPolicy < ApplicationPolicy

  def initialize(user, project)
    @user = user
    @project = project
  end

  def create?
    @user && (@user.editor? || @user.author? || @user.admin?)
  end

  def edit?
    @user && (@user.editor? || @user.admin? || (@project.author == @user))
  end

  def update?
    edit?
  end

  def toggle_published?
    @user && (@user.editor? || @user.admin?)
  end

  def destroy?
    @user && (@user.editor? || @user.admin?)
  end

  def new?
    create?
  end

  def show?
    true
  end

  Scope = Struct.new(:user, :scope) do
    def resolve
      if user && ( user.editor? || user.admin? )
        scope.all
      elsif user && user.author?
        scope.where("published = true or author_id = ?", user.id)
      else
        scope.where(:published => true)
      end
    end
  end
end
