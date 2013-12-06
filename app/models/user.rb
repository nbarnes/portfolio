class User < ActiveRecord::Base
  default_scope order('email DESC')
  before_create :set_default_role

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :rememberable, :trackable, :validatable, :omniauthable

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

  private
  def set_default_role
    self.role ||= Role.find_by_name('visitor')
  end

  # Start code from https://gist.github.com/ivanoats/7076128
  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.nickname
      user.email = "#{user.name}-CHANGEME@twitter.example.com"
    end
  end

  def self.new_with_session(params, session)
    if session["devise.user_attributes"]
      new(session["devise.user_attributes"], without_protection: true) do |user|
        user.attributes = params
        user.valid?
      end
    else
      super
    end
  end

  def password_required?
    super && provider.blank?
  end

  def update_with_password(params, *options)
    if encrypted_password.blank?
      update_attributes(params, *options)
    else
      super
    end
  end
  # End code from https://gist.github.com/ivanoats/7076128


end


