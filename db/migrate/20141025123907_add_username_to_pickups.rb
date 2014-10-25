class AddUsernameToPickups < ActiveRecord::Migration
  def change
     add_column :pickups, :creator, :string
  end
end
