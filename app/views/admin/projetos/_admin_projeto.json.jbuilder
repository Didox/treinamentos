json.extract! admin_projeto, :id, :nome_projeto, :responsavel_projeto, :email_responsavel, :pdv, :pdv_qtd, :cliente_id, :created_at, :updated_at
json.url admin_projeto_url(admin_projeto, format: :json)
