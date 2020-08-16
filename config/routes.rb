Rails.application.routes.draw do
  devise_for :users
  root "informations#index"
  
  resources :informations, only:[:new, :create]
  resources :categorys, only:[:index, :show]
  resources :exclusions, only:[:index]

end
