Rails.application.routes.draw do
  get 'lists/index'
  get 'lists/create'
  get 'lists/new'
  get 'lists/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'lists#index'
  get '/lists', to: 'lists#index'
  post '/lists', to: 'lists#create'
  get '/lists/new', to: 'lists#new', as: :new_list
  get '/lists/:id', to: 'lists#show', as: :list
end
