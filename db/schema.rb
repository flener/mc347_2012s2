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

ActiveRecord::Schema.define(:version => 20120901002856) do

  create_table "admins", :force => true do |t|
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
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

  create_table "clients", :force => true do |t|
    t.string   "cpf"
    t.string   "nome"
    t.string   "rg"
    t.string   "nome_pai"
    t.string   "nome_mae"
    t.date     "data_nascimento"
    t.string   "local_nascimento"
    t.integer  "quantidade_filhos"
    t.text     "observacoes"
    t.integer  "endereco_id"
    t.integer  "religiao_id"
    t.integer  "hobby_id"
    t.integer  "email_id"
    t.integer  "telefone_id"
    t.integer  "trabalho_id"
    t.integer  "estado_civil_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.boolean  "ativo"
  end

  create_table "emails", :force => true do |t|
    t.text     "endereco"
    t.string   "cliente_cpf"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "enderecos", :force => true do |t|
    t.string   "cep"
    t.string   "estado"
    t.string   "cidade"
    t.string   "bairro"
    t.string   "rua"
    t.string   "cliente_cpf"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "estado_civils", :force => true do |t|
    t.string   "cpf_conjuge"
    t.string   "cliente_cpf"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "hobbies", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "operadors", :force => true do |t|
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
  end

  add_index "operadors", ["email"], :name => "index_operadors_on_email", :unique => true
  add_index "operadors", ["reset_password_token"], :name => "index_operadors_on_reset_password_token", :unique => true

  create_table "religiaos", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "telefones", :force => true do |t|
    t.string   "numero"
    t.string   "cliente_cpf"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "trabalhos", :force => true do |t|
    t.string   "area_trabalho"
    t.string   "cargo"
    t.integer  "rendimento"
    t.string   "cliente_cpf"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
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
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "usuarios", :force => true do |t|
    t.string   "nome"
    t.string   "rg"
    t.string   "cpf"
    t.string   "cep"
    t.string   "endereco"
    t.string   "pai"
    t.string   "mae"
    t.date     "data_nasc"
    t.string   "local_nasc"
    t.string   "estado_civil"
    t.string   "cpf_conjugue"
    t.string   "area_trab"
    t.string   "cargo"
    t.integer  "renda"
    t.string   "email"
    t.string   "telefone"
    t.text     "hobbies"
    t.integer  "filhos"
    t.string   "religiao"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
