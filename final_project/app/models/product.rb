class Product < ActiveRecord::Base
  belongs_to :category
  has_many :order_lists
  mount_uploader :attachment, AttachmentUploader
end
