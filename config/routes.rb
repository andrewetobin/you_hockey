Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "welcome#index"

  resources :standings, only: [:index]
  resources :games, only: [:index]
  resources :bests, only: [:index]
end
