Portfolio::Application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks"}

  devise_scope :user do
    get "login", :to => "devise/sessions#new"
  end

  get 'posts/display'
  get 'projects/display'

  resources :posts do
    member do
      put 'toggle_published'
    end
  end

  get 'welcome', to: 'static#welcome'
  get 'portfolio', to: 'static#welcome'
  get 'projects', to: 'static#projects'
  get 'posts', to: 'static#blog'
  get 'blog', to: 'static#blog'
  get 'about_me', to: 'static#about_me'

  resources :projects do
    member do
      put 'toggle_published'
    end
  end

  get '/*foo', to: redirect('/welcome')

  root :to => 'posts#display'

end
