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

ActiveRecord::Schema.define(:version => 20130603084800) do

  create_table "aree_territoriali", :force => true do |t|
    t.string   "nome"
    t.string   "codice"
    t.integer  "provincia_id"
    t.integer  "banca_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "azioni", :force => true do |t|
    t.string   "nome"
    t.integer  "contributo_id"
    t.integer  "tipo_azione_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "banche", :force => true do |t|
    t.string   "nome"
    t.string   "abi"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "contributi", :force => true do |t|
    t.string   "codice"
    t.date     "datarichiesta"
    t.text     "oggetto"
    t.string   "segnalante"
    t.integer  "tipo_contributo_id"
    t.integer  "filiale_id"
    t.integer  "richiedente_id"
    t.datetime "created_at",                                         :null => false
    t.datetime "updated_at",                                         :null => false
    t.date     "dataerogazione"
    t.integer  "stato_contributo_id"
    t.decimal  "importorichiesto",    :precision => 10, :scale => 0
    t.decimal  "importoerogato",      :precision => 10, :scale => 0
    t.decimal  "aliquotaiva",         :precision => 10, :scale => 0
    t.text     "ritornoprevisto"
    t.text     "ritornoeffettivo"
    t.text     "offertatarget"
    t.text     "note"
    t.date     "datadelibera"
    t.string   "azienda"
    t.string   "stato"
    t.string   "tipo"
    t.string   "agenzia"
  end

  create_table "documenti", :force => true do |t|
    t.string   "numerofattura"
    t.date     "datafattura"
    t.decimal  "importo",           :precision => 10, :scale => 0
    t.integer  "tipo_documento_id"
    t.integer  "valuta_id"
    t.integer  "contributo_id"
    t.datetime "created_at",                                       :null => false
    t.datetime "updated_at",                                       :null => false
  end

  create_table "eventi", :force => true do |t|
    t.string   "localita"
    t.date     "datainizio"
    t.date     "datafine"
    t.string   "orario"
    t.string   "striscione"
    t.date     "dataconsprevista"
    t.date     "dataconseffettiva"
    t.date     "datarestituzione"
    t.string   "numstriscione"
    t.string   "durata"
    t.integer  "tipo_evento_id"
    t.integer  "contributo_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "filiali", :force => true do |t|
    t.string   "nome"
    t.string   "codice"
    t.string   "cab"
    t.integer  "banca_id"
    t.integer  "area_territoriale_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.string   "codarea"
    t.integer  "provincia_id"
  end

  create_table "posizioni", :force => true do |t|
    t.string   "numeroconto"
    t.string   "iban"
    t.integer  "richiedente_id"
    t.integer  "banca_id"
    t.integer  "filiale_id_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "province", :force => true do |t|
    t.string   "nome"
    t.string   "sigla"
    t.integer  "regione_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "regioni", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "richiedenti", :force => true do |t|
    t.string   "cana"
    t.string   "ragionesociale"
    t.string   "indirizzo"
    t.string   "cap"
    t.string   "citta"
    t.string   "telefono"
    t.string   "fax"
    t.string   "piva"
    t.string   "email"
    t.string   "note"
    t.integer  "provincia_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "codfiscale"
    t.string   "codice"
    t.integer  "cod029"
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "stati_contributo", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tipi_contributo", :force => true do |t|
    t.string   "descrizione"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "tipi_documento", :force => true do |t|
    t.string   "descrizione"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "tipi_evento", :force => true do |t|
    t.string   "descrizione"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

  create_table "valute", :force => true do |t|
    t.string   "sigla"
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
