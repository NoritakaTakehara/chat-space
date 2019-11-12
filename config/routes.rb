Rails.application.routes.draw do
  devise_for :users
  root 'groups#index'
  resources :users, only: [:new,:index, :edit, :update]
  resources :groups, only: [:new, :create, :edit, :update] do
    resources :messages, only: [:index]
  end
end