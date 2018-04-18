class CreateSeats < ActiveRecord::Migration[5.1]
  def change
    create_table :seats do |t|
      t.integer :row
      t.integer :numseat
      t.references :zone, foreign_key: true

      t.timestamps
    end
  end
end
