json.array!(@products) do |product|
  json.extract! product, :id, :category, :image, :price
  json.url product_url(product, format: :json)
end
