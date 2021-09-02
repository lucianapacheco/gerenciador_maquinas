Rails.application.routes.draw do
  devise_for :usuarios
  root 'home#index'
  resources :maquinas
  resources :home
  resources :contato
  resources :sobre
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
