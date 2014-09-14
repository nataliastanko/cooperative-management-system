class CreateProducerContacts < ActiveRecord::Migration
  def change
    create_table :producer_contacts do |t|
      t.string :firstname
      t.string :lastname
      t.string :email, :null => true
      t.string :phone, :null => true
      t.text :description, :null => true

      t.timestamps
    end
  end
end
