json.extract! admin_administrador, :id, :nome, :cpf, :admin_departamento_id, :email, :senha, :created_at, :updated_at
json.url admin_administrador_url(admin_administrador, format: :json)
