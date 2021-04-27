class CreateSolicituds < ActiveRecord::Migration[6.1]
  def change
    create_table :solicituds do |t|
      t.integer :Estado
      t.string :PrimerNombre
      t.string :PrimerApellido
      t.string :Genero
      t.string :TipoDocumento
      t.integer :cc
      t.datetime :FechaNacimiento
      t.datetime :FechaExpedicion
      t.datetime :FechaAnalisis
      t.datetime :FechaComite
      t.datetime :FechaReferenciacion
      t.datetime :FechaDesembolso
      t.datetime :FechaTesoreria
      t.integer :cellphone
      t.integer :cellphone2
      t.string :Whatsapp
      t.string :CorreoElectronico
      t.string :MunicipioRes
      t.string :DepartamentoRes
      t.string :Vereda
      t.string :DireccionRes
      t.string :TipoVivienda
      t.float :ResidenciaYears
      t.string :NivelEstudios
      t.string :PersonasCargo
      t.string :ViveDondeTrabaja
      t.string :MunicipioTrabajo
      t.string :DepartamentoTrabajo
      t.string :IngresoPpl
      t.string :OtrosIngresos
      t.string :ProduccionPpl
      t.string :Producto1
      t.string :Producto1Diferente
      t.string :ProduccionSec
      t.string :Producto2
      t.string :Producto2Diferente
      t.float :ExperienciaSectorAgropecuario
      t.float :ExperienciaActividad
      t.integer :HectareasProductivas
      t.string :Tenencia
      t.string :ViaAcceso
      t.float :IngresoMensual
      t.float :CostoActividad
      t.float :GastosFamiliares
      t.string :TipoSol
      t.string :TipoSolicitante
      t.string :Productosolicitado
      t.float :MontoSolicitado
      t.string :Objetivo
      t.integer :Plazo
      t.string :Garantia
      t.string :FuentePago
      t.hstore :familiar_reference_1
      t.hstore :familiar_reference_2
      t.hstore :personal_reference_1
      t.string :reason
      t.string :applicationsLoan
      t.string :es_conocido_en_tiendas
      t.hstore :farmerphotos
      t.string :uid
      t.hstore :store
      t.integer :uniqueNumberApplicationLoan
      t.hstore :comments
      t.hstore :comercial_obj
      t.hstore :analisis_obj
      t.hstore :referenciacion_obj
      t.hstore :desembolso_obj
      t.hstore :tesoreria_obj

      t.timestamps
    end
  end
end
