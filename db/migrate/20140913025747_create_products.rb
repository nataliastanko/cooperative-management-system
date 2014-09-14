class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description, :null => true
      t.boolean :is_active, default: false
      t.float :price
      t.string :unit

      t.timestamps
    end
  end
end
