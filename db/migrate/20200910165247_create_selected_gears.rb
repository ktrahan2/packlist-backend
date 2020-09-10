class CreateSelectedGears < ActiveRecord::Migration[6.0]
  def change
    create_table :selected_gears do |t|
      t.references :pack, null: false, foreign_key: true
      t.references :gear, null: false, foreign_key: true

      t.timestamps
    end
  end
end
