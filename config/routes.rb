Rails.application.routes.draw do
  root "informations#index"
  
  resources :informations, only:[:new, :create]
  # resources :categorys, only:[:index]

end
