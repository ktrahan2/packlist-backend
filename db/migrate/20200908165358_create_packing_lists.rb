class CreatePackingLists < ActiveRecord::Migration[6.0]
  def change
    create_table :packing_lists do |t|
      t.references :activity
      t.references :gear
      
      t.timestamps
    end
  end
end
