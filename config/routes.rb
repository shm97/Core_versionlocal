Rails.application.routes.draw do
  get 'solicitudes/index_solicitudes'
  get 'solicitudes/index_codeudores'
  get 'solicitudes/show_solicitud'
  get 'solicitudes/show_codeudor'
  get 'solicitudes/lambda'
  post 'solicitudes/create_solicitud'
  post 'solicitudes/create_codeudor'
  get 'solicitudes/delete_codeudor'
  get 'solicitudes/revisar_parametros'
  #resources :solicitudes, only: [:index, :show, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
