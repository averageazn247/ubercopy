class DropUsernameFromPickups < ActiveRecord::Migration
  def change
  remove_column :pickups, :username
  end
end
