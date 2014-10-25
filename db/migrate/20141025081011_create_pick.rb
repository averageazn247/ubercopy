class CreatePick < ActiveRecord::Migration
def change
  
  
  create_table(:pickups) do |t|
    t.float :username
    t.float :rate
    t.datetime :now 
    t.string :home
    t.string :current
    t.float :long
    t.float :lat
    
  end 
  end
end
