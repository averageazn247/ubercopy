class AddIpToPickups < ActiveRecord::Migration
  def change
     add_column :pickups, :ip, :string
  end
end
