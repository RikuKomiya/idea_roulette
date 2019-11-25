Rails.application.routes.draw do



  authenticated :user do
    root to: 'two_word_associates#home', as: :user_root
  end
  root to:'home#home'


  devise_for :users,controllers: {
      omniauth_callbacks: 'users/omniauth_callbacks'
  }
  resources :words
  resources :ideas
  resources :users, only: [:index,:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
