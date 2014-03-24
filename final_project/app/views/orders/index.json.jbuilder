json.array!(@orders) do |order|
  json.extract! order, :id, :order_id, :customer_id, :total_cost
  json.url order_url(order, format: :json)
end
