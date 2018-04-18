class CreateZones < ActiveRecord::Migration[5.1]
  def change
    create_table :zones do |t|
      t.integer :number
      t.integer :price
      t.references :play_ground, foreign_key: true

      t.timestamps
    end
  end
end
