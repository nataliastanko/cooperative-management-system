class Product < ActiveRecord::Base
  has_many :product_comments
  belongs_to :producer
  validates :producer, presence: true
end
