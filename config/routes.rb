Rails.application.routes.draw do
  root "informations#index"

  resources :informations, only:[:index, :new]
  resources :categorys, only:[:index]

end
