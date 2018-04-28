class CreateAdminProjetos < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_projetos do |t|
      t.string :nome_projeto
      t.string :responsavel_projeto
      t.string :email_responsavel
      t.string :pdv
      t.integer :pdv_qtd
      t.references :cliente, foreign_key: {to_table: :admin_clientes}

      t.timestamps
    end
  end
end
