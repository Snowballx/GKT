class Product < ApplicationRecord
  mount_uploader :picture, PictureUploader
  belongs_to :users
  has_many :order_items
  has_many :comments
  # Add a default scope that checks if the active flag is set to true. This ensures that deleted/inactive products aren't shown.
  default_scope { where(active: true) }

  validates_presence_of :title, :description, :price

end
