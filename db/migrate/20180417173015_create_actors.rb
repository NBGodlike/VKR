class CreateActors < ActiveRecord::Migration[5.1]
  def change
    create_table :actors do |t|
      t.string :surname
      t.string :name
      t.string :patronymic
      t.references :theate, foreign_key: true

      t.timestamps
    end
  end
end
