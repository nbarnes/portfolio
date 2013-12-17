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

  resources :projects do
    member do
      put 'toggle_published'
    end
  end

  root :to => 'posts#display'

  get ':action' => 'static#:action'

end
