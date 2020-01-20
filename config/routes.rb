Rails.application.routes.draw do
  resources :equipment
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'equipment#index'


end
