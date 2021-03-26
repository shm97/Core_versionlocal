# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_24_222108) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "hstore"
  enable_extension "plpgsql"

  create_table "solicituds", force: :cascade do |t|
    t.string "PrimerNombre"
    t.string "PrimerApellido"
    t.string "Genero"
    t.string "TipoDocumento"
    t.integer "cc"
    t.datetime "FechaNacimiento"
    t.integer "cellphone"
    t.integer "cellphone2"
    t.string "Whatsapp"
    t.string "CorreoElectronico"
    t.string "MunicipioRes"
    t.string "DepartamentoRes"
    t.string "Vereda"
    t.string "DireccionRes"
    t.string "TipoVivienda"
    t.float "ResidenciaYears"
    t.string "NivelEstudios"
    t.string "PersonasCargo"
    t.string "ViveDondeTrabaja"
    t.string "MunicipioTrabajo"
    t.string "DepartamentoTrabajo"
    t.string "IngresoPpl"
    t.string "OtrosIngresos"
    t.string "ProduccionPpl"
    t.string "Producto1"
    t.string "Producto1Diferente"
    t.string "ProduccionSec"
    t.string "Producto2"
    t.string "Producto2Diferente"
    t.float "ExperienciaSectorAgropecuario"
    t.float "ExperienciaActividad"
    t.integer "HectareasProductivas"
    t.string "Tenencia"
    t.string "ViaAcceso"
    t.float "IngresoMensual"
    t.float "CostoActividad"
    t.float "GastosFamiliares"
    t.string "TipoSol"
    t.string "TipoSolicitante"
    t.string "Productosolicitado"
    t.float "MontoSolicitado"
    t.string "Objetivo"
    t.integer "Plazo"
    t.string "Garantia"
    t.string "FuentePago"
    t.hstore "familiar_reference_1"
    t.hstore "familiar_reference_2"
    t.hstore "personal_reference_1"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
