Rails.application.routes.draw do
  get 'solicitudes/index'
  get 'solicitudes/show'
  get 'solicitudes/lambda'
  post 'solicitudes/create'
  #resources :solicitudes, only: [:index, :show, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
