Rails.application.routes.draw do

  get '/', to: "pages#home"
  resources :houses, only: [:index, :show]
  resources :students, only: [:index, :show, :new, :create]

end
