class Product < ApplicationRecord
  has_many :stock_items, dependent: :destroy
end
