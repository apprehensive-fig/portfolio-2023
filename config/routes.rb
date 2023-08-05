Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'
  # get '/asmr', to: 'pages#asmr'
  get '/bio', to: 'pages#bio'

  get '/blog', to: 'pages#blog'
  get '/blog/:title', to: 'pages#post'

  get '/projects', to: 'pages#projects'

  resources :posts

  devise_scope :user do
    get 'sign_in', to: 'devise/sessions#new'
  end
end
