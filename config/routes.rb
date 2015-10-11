
Rails.application.routes.draw do

  devise_for :users
  devise_scope :user do
    get "log_in", to: "devise/sessions#new"
  end
  root 'posts#index'

  get 'welcome', to: 'static#welcome'
  get 'about_me', to: 'static#about_me'
  get 'blog', to: 'posts#index'

  resources :posts do
    member do
      put 'toggle_published'
    end
    collection do
      get 'admin'
    end
  end

  resources :projects do
    member do
      put 'toggle_published'
    end
    collection do
      get 'admin'
    end
  end

  get '/*foo', to: redirect('/')

end
