class CreateTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :tickets do |t|
      t.datetime :selldate
      t.integer :numticket
      t.references :seat, foreign_key: true
      t.references :perfomance, foreign_key: true

      t.timestamps
    end
  end
end
