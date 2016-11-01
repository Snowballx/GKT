class Product < ApplicationRecord
  mount_uploader :picture, PictureUploader

  has_many :order_items
  # Add a default scope that checks if the active flag is set to true. This ensures that deleted/inactive products aren't shown. 
  default_scope { where(active: true) }
end
