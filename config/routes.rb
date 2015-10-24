Rails.application.routes.draw do
  devise_for :users
  resources :learning_propositions, only: [:index, :show]


end
