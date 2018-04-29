class CreateAdminClientes < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_clientes do |t|
      t.string :razao_social
      t.string :cnpj
      t.string :nome_fantasia
      t.string :nome_responsavel
      t.string :email
      t.string :telefone
      t.boolean :status, default: false

      t.timestamps
    end
     add_index :admin_clientes, :cnpj, unique: true
  end
end
