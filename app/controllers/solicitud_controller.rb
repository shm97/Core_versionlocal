class SolicitudController < ApplicationController
    def revisar_parametros
        require 'json'
        value = JSON.parse(params[:store])
        puts value
        render json: params, status:200
      end
    
    def index_solicitudes
        solicitudes = Solicitud.all
        render json: solicitudes, status:200
    end 
end
