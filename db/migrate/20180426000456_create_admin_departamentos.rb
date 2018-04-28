class CreateAdminDepartamentos < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_departamentos do |t|
      t.string :nome

      t.timestamps
    end
  end
end
