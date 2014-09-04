Portfolio::Application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks"}

  devise_scope :user do
    get "login", :to => "devise/sessions#new"
  end

  root :to => 'front_page#welcome'

  get 'welcome', to: 'front_page#welcome'
  get 'portfolio', to: 'front_page#welcome'
  get 'projects', to: 'front_page#projects'
  get 'posts', to: 'front_page#blog'
  get 'blog', to: 'front_page#blog'
  get 'about_me', to: 'front_page#about_me'

  get 'posts/display'

  get 'projects/admin'
  get 'posts/admin'

  resources :posts do
    member do
      put 'toggle_published'
    end
  end

  resources :projects do
    member do
      put 'toggle_published'
    end
  end

  get '/*foo', to: redirect('/welcome')

end
