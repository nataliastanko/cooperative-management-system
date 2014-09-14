class CreateProducers < ActiveRecord::Migration
  def change
    create_table :producers do |t|
      t.string :name
      t.text :description, :null => true
      t.boolean :is_active, default: false
      t.string :city
      t.string :street
      t.string :zip_code

      t.timestamps
    end
  end
end
