Rails.application.routes.draw do
  get 'cards/show'
  
  namespace :api do
    get  'cards', to: 'cards#index'
    post 'cards', to: 'cards#create', as: 'create_card'
    post 'phases', to: 'phases#create', as: 'create_phase'
  end

  get 'pipes/show', as: :pipes

  get 'organizations/index'
  get 'organization/fetch_data', to: 'organizations#fetch_data'
  get 'organization/destroy', to: 'organizations#destroy'


  devise_for :users

  root to: 'organizations#index'
  
end
