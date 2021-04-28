Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'originacion/testeo'
  #root :to => 'originacion#testeo'
  get 'originacion/index_solicitudes'
  post 'originacion/crear_solicitud'
  #root :to => 'originacion#crear_solicitud'
  #get 'originacion/revisar_parametros'
  #get 'originacion/index_solicitudes'
  
  


end
