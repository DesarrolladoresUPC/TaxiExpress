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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150916210702) do

  create_table "categoria", force: :cascade do |t|
    t.string   "codigo",     limit: 255
    t.string   "nombre",     limit: 255
    t.decimal  "costo",                  precision: 10
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "chofer_registros", force: :cascade do |t|
    t.string   "codigo",     limit: 255
    t.string   "nombres",    limit: 255
    t.string   "apellidos",  limit: 255
    t.integer  "telefono",   limit: 4
    t.string   "distrito",   limit: 255
    t.string   "estado",     limit: 255
    t.string   "cuenta",     limit: 255
    t.string   "placa",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "cliente_registros", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.string   "telefono",   limit: 255
    t.string   "apellido",   limit: 255
    t.string   "correo",     limit: 255
    t.string   "contrasena", limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "conductor_registros", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.string   "telefono",   limit: 255
    t.string   "apellido",   limit: 255
    t.string   "correo",     limit: 255
    t.string   "contraseña", limit: 255
    t.string   "codigo",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "cuenta", force: :cascade do |t|
    t.string   "correo",     limit: 255
    t.string   "password",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "dirfavorita_registros", force: :cascade do |t|
    t.string   "nombre",      limit: 255
    t.string   "dirfavorita", limit: 255
    t.string   "distrito",    limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "distritos", force: :cascade do |t|
    t.string   "codigo",     limit: 255
    t.string   "nombre",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "feedback_registros", force: :cascade do |t|
    t.float    "calificacion", limit: 24
    t.string   "comentario",   limit: 255
    t.string   "distrito",     limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "metodo_pago_registros", force: :cascade do |t|
    t.string   "codigo",     limit: 255
    t.string   "nombre",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "operador_registros", force: :cascade do |t|
    t.string   "codigo",     limit: 255
    t.string   "nombres",    limit: 255
    t.string   "apellidos",  limit: 255
    t.integer  "telefono",   limit: 4
    t.string   "cuenta",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "reservas", force: :cascade do |t|
    t.string   "codigo",             limit: 255
    t.string   "direccion_origen",   limit: 255
    t.string   "distrito_origen",    limit: 255
    t.string   "direccion_destino",  limit: 255
    t.string   "distrito_destino",   limit: 255
    t.integer  "cantidad_pasajeros", limit: 4
    t.decimal  "tarifa_final",                   precision: 10
    t.string   "metodo_pago",        limit: 255
    t.string   "estado",             limit: 255
    t.string   "chofer",             limit: 255
    t.string   "usuario",            limit: 255
    t.datetime "created"
    t.datetime "updated"
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
    t.integer  "categoria_id",       limit: 4
  end

  add_index "reservas", ["categoria_id"], name: "index_reservas_on_categoria_id", using: :btree

  create_table "tarifario_registros", force: :cascade do |t|
    t.string   "distrito_origen", limit: 255
    t.decimal  "tarifa",                      precision: 10
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  create_table "vehiculo_registros", force: :cascade do |t|
    t.string   "placa",      limit: 255
    t.string   "marca",      limit: 255
    t.string   "modelo",     limit: 255
    t.string   "color",      limit: 255
    t.string   "categoria",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
