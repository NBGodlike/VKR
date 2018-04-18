class CreatePerfomances < ActiveRecord::Migration[5.1]
  def change
    create_table :perfomances do |t|
      t.text :status
      t.datetime :date
      t.references :play_ground, foreign_key: true
      t.references :repertoire, foreign_key: true

      t.timestamps
    end
  end
end
