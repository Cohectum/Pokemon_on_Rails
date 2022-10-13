Rails.application.routes.draw do
  get 'home/about'
  get 'home/index'
  resources :pokemon_moves
  resources :pokemon_abilities
  resources :pokemon_types
  resources :moves
  resources :abilities
  resources :types
  resources :sprites
  resources :pokemons
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
