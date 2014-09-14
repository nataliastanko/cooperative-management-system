class Product < ActiveRecord::Base
  has_many :product_comments
  belongs_to :producer
  validates :producer, presence: true
  scope :active, -> { where(is_active: true) }
  default_scope {order('is_active desc')}
end
