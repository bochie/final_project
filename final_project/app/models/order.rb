class Order < ActiveRecord::Base
  belongs_to :customer
  has_many :order_lists
  has_many :products, :through => :order_lists
end
