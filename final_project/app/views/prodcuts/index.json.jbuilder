json.array!(@prodcuts) do |prodcut|
  json.extract! prodcut, :id, :product_id, :name, :qty_on_hand, :price
  json.url prodcut_url(prodcut, format: :json)
end
