class AddProducerRefToProducerContacts < ActiveRecord::Migration
  def change
    add_reference :producer_contacts, :producer, index: true
  end
end
