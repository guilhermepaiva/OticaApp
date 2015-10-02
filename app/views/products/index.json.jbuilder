json.array!(@products) do |product|
  json.extract! product, :id, :brand, :size, :reference, :gender, :type, :price
  json.url product_url(product, format: :json)
end
