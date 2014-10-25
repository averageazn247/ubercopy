class AddEndlatToPickup < ActiveRecord::Migration
  def change
    add_column :pickups, :end_lat, :float
    add_column :pickups, :end_long, :float
  end
end
