json.extract! maquina, :id, :tipo, :nome, :descricao, :garantia, :compra, :quebrada, :created_at, :updated_at
json.url maquina_url(maquina, format: :json)
