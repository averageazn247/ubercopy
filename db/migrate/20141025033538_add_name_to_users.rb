class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :number, :float
    add_column :users, :lat, :float
    add_column :users, :long, :float
    add_column :users, :driver, :boolean
    add_column :users, :use, :boolean
    
  end
end
