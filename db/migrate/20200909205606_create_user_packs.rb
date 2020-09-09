class CreateUserPacks < ActiveRecord::Migration[6.0]
  def change
    create_table :user_packs do |t|
      t.references :user, null: false, foreign_key: true
      t.references :gear, null: false, foreign_key: true
      t.string :list_name

      t.timestamps
    end
  end
end
