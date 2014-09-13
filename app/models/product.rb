class Product < ActiveRecord::Base
  has_many :product_comments
  accepts_nested_attributes_for :product_comments
end
