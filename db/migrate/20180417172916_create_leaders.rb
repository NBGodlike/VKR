class CreateLeaders < ActiveRecord::Migration[5.1]
  def change
    create_table :leaders do |t|
      t.string :surname
      t.string :name
      t.string :patronymic
      t.text :telefon
      t.string :job
      t.references :theate, foreign_key: true

      t.timestamps
    end
  end
end
