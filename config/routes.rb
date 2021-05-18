Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'originacion/testeo'
  #root :to => 'originacion#testeo'
  get 'originacion/index_solicitudes'
  post 'originacion/crear_solicitud'
  #root :to => 'originacion#crear_solicitud'
  post 'originacion/revisar_parametros'
  #get 'originacion/index_solicitudes'
  
  post 'sesion/create'
  post 'sesion/login'
  get 'sesion/auto_login'

end
