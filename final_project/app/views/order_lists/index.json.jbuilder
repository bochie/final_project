json.array!(@order_lists) do |order_list|
  json.extract! order_list, :id, :product_id, :order_id, :num_ordered, :price
  json.url order_list_url(order_list, format: :json)
end
