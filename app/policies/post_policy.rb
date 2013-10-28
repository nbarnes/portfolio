class PostPolicy < ApplicationPolicy

  def initialize(user, post)
    @user = user
    @post = post
  end

  def create?
    @user && (@user.editor? || @user.author?)
  end

  def edit?
    @user && (@user.editor? || (@post.author == @user))
  end

  def update?
    edit?
  end

  def toggle_published?
    @user && (@user.editor?)
  end

  def destroy?
    @user && (@user.editor?)
  end

  def new?
    create?
  end

  def show?
    true
  end

  Scope = Struct.new(:user, :scope) do
    def resolve
      if user && user.editor?
        scope.all
      elsif user && user.author?
        scope.where("published = true or author_id = ?", user.id)
      else
        scope.where(:published => true)
      end
    end
  end

end
