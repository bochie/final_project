json.array!(@payment_types) do |payment_type|
  json.extract! payment_type, :id, :customer_id, :payment_type, :card_number, :expiry_year, :expiry_month
  json.url payment_type_url(payment_type, format: :json)
end
