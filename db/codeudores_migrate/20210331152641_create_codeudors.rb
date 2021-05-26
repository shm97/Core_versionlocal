class CreateCodeudors < ActiveRecord::Migration[6.1]
  def connection
    ActiveRecord::Base.establish_connection("codeudores".to_sym).connection
  end
  def change
    create_table :codeudors do |t|
      t.string :PrimerNombre
      t.string :PrimerApellido
      t.string :Genero
      t.string :TipoDocumento
      t.integer :cc
      t.datetime :FechaNacimiento
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

      t.timestamps
    end
  end
end