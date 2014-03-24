json.array!(@bill_addresses) do |bill_address|
  json.extract! bill_address, :id, :customer_id, :country, :address, :postal_code, :state_province
  json.url bill_address_url(bill_address, format: :json)
end
