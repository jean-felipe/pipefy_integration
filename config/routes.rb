Rails.application.routes.draw do
  get 'cards/show'
  
  namespace :api do
    get 'cards', to: 'cards#index'
  end

  get 'pipes/show', as: :pipes

  get 'organizations/index'

  devise_for :users

  root to: 'organizations#index'
  
end
