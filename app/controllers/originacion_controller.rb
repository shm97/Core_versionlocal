class OriginacionController < ApplicationController

    def testeo
        @originacion = "{'succes':'Hola desde el api Core'}"
        render succes: @originacion
    end
    
    def revisar_parametros
        #require 'json'
        #value = JSON.parse(params[:store])
        #puts value

        render json: params, status:200
    end
    
    def index_solicitudes
        solicitudes = Solicitud.all
        render json: solicitudes, status:200
    end 

    def lambda
        require 'net/http'
        result = Net::HTTP.get(URI.parse('https://6ls42syxm5.execute-api.us-east-2.amazonaws.com/pruebas/pruebas'))
        render json: result
    end

    def crear_solicitud
                
        solicitud = Solicitud.new(
            Estado: params[:Estado],
            PrimerNombre: params[:PrimerNombre],
            PrimerApellido: params[:PrimerApellido],
            Genero: params[:Genero],
            cc: params[:cc],
            TipoDocumento: params[:TipoDocumento],
            FechaNacimiento: params[:FechaNacimiento],
            cellphone: params[:cellphone],
            cellphone2: params[:cellphone2],
            Whatsapp: params[:Whatsapp],
            CorreoElectronico: params[:CorreoElectronico],
            MunicipioRes: params[:MunicipioRes],
            DepartamentoRes: params[:DepartamentoRes],
            DireccionRes: params[:DireccionRes],
            Vereda: params[:Vereda],
            TipoVivienda: params[:TipoVivienda],
            ResidenciaYears: params[:ResidenciaYears],
            NivelEstudios: params[:NivelEstudios],
            PersonasCargo: params[:PersonasCargo],
            ViveDondeTrabaja: params[:ViveDondeTrabaja],
            MunicipioTrabajo: params[:MunicipioTrabajo],
            DepartamentoTrabajo: params[:DepartamentoTrabajo],
            IngresoPpl: params[:IngresoPpl],
            OtrosIngresos: params[:OtrosIngresos],
            ProduccionPpl: params[:ProduccionPpl],
            Producto1: params[:Producto1],
            Producto1Diferente: params[:Producto1Diferente],
            ProduccionSec: params[:ProduccionSec],
            Producto2: params[:Producto2],
            Producto2Diferente: params[:Producto2Diferente],
            ExperienciaSectorAgropecuario: params[:ExperienciaSectorAgropecuario],
            ExperienciaActividad: params[:ExperienciaActividad],
            HectareasProductivas: params[:HectareasProductivas],
            Tenencia: params[:Tenencia],
            ViaAcceso: params[:ViaAcceso],
            IngresoMensual: params[:IngresoMensual],
            CostoActividad: params[:CostoActividad],
            TipoSol: params[:TipoSol],
            TipoSolicitante: params[:TipoSolicitante],
            Productosolicitado: params[:Productosolicitado],
            MontoSolicitado: params[:MontoSolicitado],
            Objetivo: params[:Objetivo],
            GastosFamiliares: params[:GastosFamiliares],
            Plazo: params[:Plazo],
            Garantia: params[:Garantia],
            FuentePago: params[:FuentePago],
            reason: params[:reason],
            uid: params[:id],
            applicationsLoan: params[:applicationsLoan],
            es_conocido_en_tiendas: params[:es_conocido_en_tiendas],
            farmerphotos: JSON.parse(params[:farmerphotos]),
            store: JSON.parse(params[:store]),
            uniqueNumberApplicationLoan: params[:uniqueNumberApplicationLoan],
            comments: params[:comments],
            comercial_obj: JSON.parse(params[:comercial_obj]),
            analisis_obj: JSON.parse(params[:analisis_obj]),
            referenciacion_obj: JSON.parse(params[:referenciacion_obj]),
            desembolso_obj: JSON.parse(params[:desembolso_obj]),
            tesoreria_obj: JSON.parse(params[:tesoreria_obj]),
            familiar_reference_1: JSON.parse(params[:familiar_reference_1]),
            familiar_reference_2: JSON.parse(params[:familiar_reference_2]),
            personal_reference_1: JSON.parse(params[:personal_reference_1]),
            )
        
        if Nueva_Solicitud.save
            render json: solicitud
        else
            
            render error: {error: 'No fue posible guardar la solicitud'}, status: 400
        end
    end
end
