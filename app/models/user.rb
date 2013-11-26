class User < ActiveRecord::Base
  default_scope order('email DESC')

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :rememberable, :trackable, :validatable

  has_many :posts, foreign_key: "author_id"

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

  def editor?
    role == 'editor'
  end

  def author?
    role == 'author'
  end

  def admin?
    role == "admin"
  end

end
