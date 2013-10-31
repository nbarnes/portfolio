class CommentPolicy < ApplicationPolicy

  def initialize(user, comment)
    @user = user
    @comment = comment
  end

  def destroy?
    publish?
  end

  def publish?
    @user && @user.editor?
  end



  Scope = Struct.new(:user, :scope) do
    def resolve
      if user && user.editor?
        scope.all
      else
        scope.where(:published => true)
      end
    end
  end

end