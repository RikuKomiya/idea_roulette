Rails.application.routes.draw do


  authenticated :user do
    root to: 'two_word_associates#new', as: :user_root
  end
  root to:'home#home'


  devise_for :users
  resources :words
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
