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

ActiveRecord::Schema.define(version: 20180428164523) do

  create_table "admin_administradores", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "nome"
    t.string "cpf"
    t.bigint "admin_departamento_id"
    t.string "email"
    t.string "senha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_departamento_id"], name: "index_admin_administradores_on_admin_departamento_id"
  end

  create_table "admin_clientes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "razao_social"
    t.string "cnpj"
    t.string "nome_fantasia"
    t.string "nome_responsavel"
    t.string "email"
    t.string "telefone"
    t.boolean "status", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cnpj"], name: "index_admin_clientes_on_cnpj", unique: true
  end

  create_table "admin_departamentos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_projetos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "nome_projeto"
    t.string "responsavel_projeto"
    t.string "email_responsavel"
    t.string "pdv"
    t.integer "pdv_qtd"
    t.bigint "cliente_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_admin_projetos_on_cliente_id"
  end

  add_foreign_key "admin_administradores", "admin_departamentos"
  add_foreign_key "admin_projetos", "admin_clientes", column: "cliente_id"
end
