Rails.application.routes.draw do
  root "informations#index"
  
  resources :categorys, only:[:index]

end
