class CreateGears < ActiveRecord::Migration[6.0]
  def change
    create_table :gears do |t|
      t.string :name
      t.text :description
      t.string :image
      t.string :url
      t.float :weight
      t.string :category

      t.timestamps
    end
  end
end
