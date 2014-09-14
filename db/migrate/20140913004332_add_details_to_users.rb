class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :phone, :string, :null => true
    add_column :users, :city, :string
    add_column :users, :street, :string
    add_column :users, :zip_code, :string
    add_column :users, :is_active, :boolean, default: false
  end
end
