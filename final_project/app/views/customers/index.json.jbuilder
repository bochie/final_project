json.array!(@customers) do |customer|
  json.extract! customer, :id, :order_id, :customer_id, :first_name, :last_name, :email_address
  json.url customer_url(customer, format: :json)
end
