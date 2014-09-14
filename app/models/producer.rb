class Producer < ActiveRecord::Base
  has_many :products
  has_many :producer_contacts
  scope :active, -> { where(is_active: true) }
  default_scope {order('is_active desc')}
end
