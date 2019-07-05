Rails.application.routes.draw do

  resources :disciplinas
  resources :professors
  resources :alunos
  root to: 'menus#index'
  get "entrar", to: "sessions#new"
  post "entrar", to: "sessions#create"
  get "sair", to: "sessions#destroy"

  resource :users, only: [:new, :create, :show]

end
