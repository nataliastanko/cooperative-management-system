class CreateProducers < ActiveRecord::Migration
  def change
    create_table :producers do |t|
      t.string :name
      t.text :description
      t.boolean :is_active
      t.text :address
      t.string :phone

      t.timestamps
    end
  end
end
