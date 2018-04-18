class CreateRepertoires < ActiveRecord::Migration[5.1]
  def change
    create_table :repertoires do |t|
      t.string :producer
      t.string :name
      t.string :genre
      t.references :theate, foreign_key: true

      t.timestamps
    end
  end
end
