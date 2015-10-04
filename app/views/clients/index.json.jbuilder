json.array!(@clients) do |client|
  json.extract! client, :id, :name, :age, :cpf, :rg, :adress, :rate
  json.url client_url(client, format: :json)
end
