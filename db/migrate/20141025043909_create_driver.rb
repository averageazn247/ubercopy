class CreateDriver < ActiveRecord::Migration
def change
  
  
  create_table(:drivers) do |t|
    t.float :userid
    t.date :day
    t.time :start
    t.time :end_time
    t.string :bar
    
  end 
  end
end
