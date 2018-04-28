class CreateAdminAdministradores < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_administradores do |t|
      t.string :nome
      t.string :cpf
      t.references :admin_departamento, foreign_key: true
      t.string :email
      t.string :senha

      t.timestamps
    end
  end
end
