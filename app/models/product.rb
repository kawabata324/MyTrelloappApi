class Product < ApplicationRecord
  self.table_name = "my_products"
  # self.primary_key = "product_id"
  # 主キーは変更できない
  validates :name, presence: true
end