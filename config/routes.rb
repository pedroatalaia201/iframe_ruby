Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to:'home#index'

  resources :video 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
