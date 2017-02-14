Rails.application.routes.draw do
  get 'organizations/index'

  devise_for :users

  root to: 'organizations#index'
  
end
