Rails.application.routes.draw do
  get 'pipes/show', as: :pipes

  get 'organizations/index'

  devise_for :users

  root to: 'organizations#index'
  
end
