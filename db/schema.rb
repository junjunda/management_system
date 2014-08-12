# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140730204244) do

  create_table "auditoria", :force => true do |t|
    t.string   "usuario"
    t.string   "accion",       :limit => 20
    t.string   "tabla",        :limit => 40
    t.datetime "fecha_accion"
    t.string   "descripcion"
  end

  create_table "cargo", :force => true do |t|
    t.string  "descripcion"
    t.integer "habilitado"
  end

  create_table "ciudad", :id => false, :force => true do |t|
    t.integer "id",         :null => false
    t.string  "nombre"
    t.integer "id_estado"
    t.integer "habilitado"
  end

  create_table "empresa", :id => false, :force => true do |t|
    t.integer  "prefijo",                         :null => false
    t.string   "nombre_empresa"
    t.datetime "fecha_inscripcion"
    t.string   "direccion_empresa"
    t.integer  "id_estado"
    t.integer  "id_ciudad"
    t.string   "rif",               :limit => 20
    t.integer  "id_estatus"
    t.string   "id_tipo_usuario"
    t.string   "nombre_comercial"
    t.integer  "id_clasificacion"
    t.string   "categoria",         :limit => 10
    t.integer  "division"
    t.integer  "grupo"
    t.integer  "clase"
    t.string   "rep_legal"
    t.string   "cargo_rep_legal"
  end

  create_table "empresa_clasificacion", :force => true do |t|
    t.string  "categoria",   :limit => 11
    t.integer "division"
    t.integer "grupo"
    t.integer "clase"
    t.string  "descripcion", :limit => 150
    t.integer "habilitado"
  end

  create_table "empresa_contacto", :force => true do |t|
    t.integer "prefijo"
    t.string  "contacto",        :limit => 60
    t.string  "tipo",            :limit => 70
    t.string  "nombre_contacto", :limit => 40
    t.string  "cargo_contacto",  :limit => 60
  end

  create_table "empresa_contacto_eliminada", :force => true do |t|
    t.integer "prefijo"
    t.string  "contacto",        :limit => 60
    t.string  "tipo",            :limit => 70
    t.string  "nombre_contacto", :limit => 40
    t.string  "cargo_contacto",  :limit => 60
  end

  create_table "empresa_correspondencia", :id => false, :force => true do |t|
    t.integer "prefijo",           :null => false
    t.string  "rep_tecnico"
    t.string  "cargo_rep_tecnico"
    t.string  "edificio"
    t.string  "calle",             :null => false
    t.string  "urbanizacion"
    t.integer "id_estado"
    t.integer "id_ciudad"
    t.integer "id_municipio"
    t.integer "cod_postal"
    t.string  "punto_referencia"
    t.integer "id_parroquia"
    t.string  "nombre_parroquia"
  end

  create_table "empresa_correspondencia_eliminada", :id => false, :force => true do |t|
    t.integer "prefijo",           :null => false
    t.string  "rep_tecnico"
    t.string  "cargo_rep_tecnico"
    t.string  "edificio"
    t.string  "calle"
    t.string  "urbanizacion"
    t.integer "id_estado"
    t.integer "id_ciudad"
    t.integer "id_municipio"
    t.integer "cod_postal"
    t.string  "punto_referencia"
    t.integer "id_parroquia"
  end

  create_table "empresa_elim_detalle", :id => false, :force => true do |t|
    t.integer  "id",                :null => false
    t.integer  "prefijo"
    t.integer  "id_usuario"
    t.datetime "fecha_eliminacion"
  end

  create_table "empresa_eliminada", :id => false, :force => true do |t|
    t.integer  "prefijo",                         :null => false
    t.string   "nombre_empresa"
    t.datetime "fecha_inscripcion"
    t.string   "direccion_empresa"
    t.integer  "id_estado"
    t.integer  "id_ciudad"
    t.string   "rif",               :limit => 20
    t.integer  "id_estatus"
    t.integer  "id_tipo_usuario"
    t.string   "nombre_comercial"
    t.integer  "id_clasificacion"
    t.string   "categoria",         :limit => 10
    t.integer  "division"
    t.integer  "grupo"
    t.integer  "clase"
    t.string   "rep_legal"
    t.string   "cargo_rep_legal"
    t.integer  "id_motivo_retiro"
    t.integer  "id_subestatus"
  end

  create_table "empresa_servicios", :force => true do |t|
    t.integer  "prefijo"
    t.integer  "id_servicio"
    t.datetime "fecha_contratacion"
    t.datetime "fecha_finalizacion"
    t.string   "nombre_contacto",    :limit => 40
    t.string   "cargo_contacto",     :limit => 40
    t.string   "telefono"
    t.string   "email",              :limit => 60
  end

  create_table "empresa_servicios_eliminado", :force => true do |t|
    t.integer  "prefijo"
    t.integer  "id_servicio"
    t.datetime "fecha_contratacion"
    t.datetime "fecha_finalizacion"
    t.string   "nombre_contacto",    :limit => 40
    t.string   "cargo_contacto",     :limit => 40
    t.string   "telefono"
    t.string   "email",              :limit => 60
    t.datetime "fecha_eliminacion"
    t.integer  "id_subestatus"
    t.integer  "id_motivo_retiro"
  end

  create_table "empresas_retiradas", :force => true do |t|
    t.integer  "prefijo"
    t.integer  "id_usuario"
    t.datetime "fecha_retiro"
    t.integer  "id_motivo_retiro"
    t.integer  "id_subestatus"
  end

  create_table "estados", :id => false, :force => true do |t|
    t.integer "id",         :null => false
    t.string  "nombre"
    t.integer "habilitado"
    t.integer "id_pais"
  end

  create_table "estatus", :force => true do |t|
    t.string  "descripcion"
    t.integer "habilitado"
    t.string  "alcance",     :limit => 15
  end

  create_table "gerencias", :force => true do |t|
    t.string  "nombre",     :limit => 60
    t.integer "habilitado"
  end

  create_table "gln", :id => false, :force => true do |t|
    t.string   "gln",                 :limit => 20, :null => false
    t.integer  "id_tipo_gln"
    t.string   "codigo_localizacion", :limit => 20
    t.string   "descripcion"
    t.integer  "id_estatus"
    t.datetime "fecha_asignacion"
    t.integer  "id_pais"
    t.integer  "id_estado"
    t.string   "id_municipio"
    t.integer  "id_ciudad"
    t.string   "edificio"
    t.string   "calle"
    t.string   "urbanizacion"
    t.string   "punto_referencia"
    t.integer  "cod_postal"
  end

  create_table "gln_elim_detalle", :force => true do |t|
    t.string   "gln",               :limit => 20
    t.integer  "id_usuario"
    t.datetime "fecha_eliminacion"
  end

  create_table "gln_eliminado", :id => false, :force => true do |t|
    t.string   "gln",                 :limit => 20, :null => false
    t.integer  "id_tipo_gln"
    t.string   "codigo_localizacion", :limit => 20
    t.string   "descripcion"
    t.integer  "id_estatus"
    t.datetime "fecha_asignacion"
    t.integer  "id_pais"
    t.integer  "id_estado"
    t.integer  "id_municipio"
    t.integer  "id_ciudad"
    t.string   "edificio"
    t.string   "calle"
    t.string   "urbanizacion"
    t.string   "punto_referencia"
    t.integer  "cod_postal"
    t.integer  "id_subestatus"
    t.integer  "id_motivo_retiro"
    t.datetime "fecha_eliminacion"
  end

  create_table "gln_empresa", :force => true do |t|
    t.integer "prefijo"
    t.string  "id_gln",  :limit => 20
  end

  create_table "gln_retirados", :force => true do |t|
    t.string   "gln",          :limit => 20
    t.integer  "id_usuario"
    t.datetime "fecha_retiro"
  end

  create_table "motivo_retiro", :force => true do |t|
    t.string  "descripcion"
    t.integer "habilitado"
  end

  create_table "municipio", :id => false, :force => true do |t|
    t.integer "id",          :null => false
    t.string  "nombre"
    t.string  "ciudad_sede"
    t.integer "id_estado"
    t.integer "habilitado"
  end

  create_table "pais", :force => true do |t|
    t.string  "nombre",     :limit => 50
    t.integer "habilitado"
  end

  create_table "parroquia", :force => true do |t|
    t.text    "nombre"
    t.integer "id_municipio"
    t.integer "habilitado"
  end

  create_table "perfil_usuario_int", :force => true do |t|
    t.string  "descripcion"
    t.string  "detalle"
    t.integer "habilitado"
  end

  create_table "producto", :id => false, :force => true do |t|
    t.string   "gtin",           :limit => 20, :null => false
    t.string   "descripcion"
    t.string   "marca"
    t.integer  "gpc"
    t.integer  "id_estatus"
    t.string   "codigo_prod"
    t.datetime "fecha_creacion"
    t.integer  "id_tipo_gtin"
  end

  create_table "producto_elim_detalle", :force => true do |t|
    t.string   "gtin",              :limit => 20
    t.integer  "id_usuario"
    t.datetime "fecha_eliminacion"
    t.integer  "id_motivo_retiro"
    t.integer  "id_subestatus"
  end

  create_table "producto_eliminado", :id => false, :force => true do |t|
    t.string   "gtin",           :limit => 20, :null => false
    t.string   "descripcion"
    t.string   "marca"
    t.integer  "gpc"
    t.integer  "id_estatus"
    t.string   "codigo_prod"
    t.datetime "fecha_creacion"
    t.integer  "id_tipo_gtin"
  end

  create_table "productos_empresa", :force => true do |t|
    t.string  "gtin",    :limit => 20
    t.integer "prefijo"
  end

  create_table "productos_retirados", :force => true do |t|
    t.string   "gtin",             :limit => 20
    t.integer  "id_usuario"
    t.datetime "fecha_retiro"
    t.integer  "id_motivo_retiro"
    t.integer  "id_subestatus"
  end

  create_table "rangos_cod_disponibles", :force => true do |t|
    t.string "cod_desde"
    t.string "cod_hasta"
  end

  create_table "secuencia_prefijo", :force => true do |t|
    t.integer  "secuencia_prefijo"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "servicios", :force => true do |t|
    t.string  "nombre"
    t.integer "habilitado"
  end

  create_table "sub_estatus", :force => true do |t|
    t.string  "descripcion", :limit => 50
    t.integer "habilitado"
  end

  create_table "tipo_gln", :force => true do |t|
    t.string  "nombre",     :limit => 30
    t.integer "habilitado"
  end

  create_table "tipo_gtin", :force => true do |t|
    t.string  "tipo",       :limit => 12
    t.string  "base",       :limit => 12
    t.integer "habilitado"
  end

  create_table "tipo_usuario_empresa", :id => false, :force => true do |t|
    t.integer "id_tipo_usu_empresa"
    t.string  "descripcion"
    t.integer "habilitado"
  end

  create_table "upc", :force => true do |t|
    t.integer "prefijo"
    t.integer "codigo_upc"
  end

  create_table "usuario_interno", :force => true do |t|
    t.string   "username",        :limit => 30
    t.string   "password"
    t.string   "nombre_apellido"
    t.string   "email"
    t.integer  "id_perfil"
    t.integer  "id_gerencia"
    t.integer  "id_cargo"
    t.datetime "fecha_creacion"
    t.string   "password_salt"
  end

  create_table "usuarios_alcances", :force => true do |t|
    t.string   "perfil"
    t.string   "alcance"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
