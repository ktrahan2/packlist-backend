class CreateDefaultLists < ActiveRecord::Migration[6.0]
  def change
    create_table :default_lists do |t|
      t.references :activity, null: false, foreign_key: true
      t.references :gear, null: false, foreign_key: true

      t.timestamps
    end
  end
end
