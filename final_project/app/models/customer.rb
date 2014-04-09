class Customer < ActiveRecord::Base
  has_many :shipping_addresses
  has_many :bill_addresses
  has_many :payment_types
  has_many :orders
end
