Rails.application.routes.draw do

  devise_for :users
  root :to => 'static#welcome'

  get 'welcome', to: 'static#welcome'
  get 'about_me', to: 'static#about_me'

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
