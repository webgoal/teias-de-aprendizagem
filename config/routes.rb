Rails.application.routes.draw do
  root 'learning_propositions#index'
  devise_for :users
  resources :learning_propositions, only: [:index, :show]


end
