json.extract! admin_cliente, :id, :razao_social, :cnpj, :nome_fantasia, :nome_responsavel, :email, :telefone, :status, :created_at, :updated_at
json.url admin_cliente_url(admin_cliente, format: :json)
