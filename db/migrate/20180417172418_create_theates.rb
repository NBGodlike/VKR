class CreateTheates < ActiveRecord::Migration[5.1]
  def change
    create_table :theates do |t|
      t.text :address
      t.text :telefon
      t.text :name

      t.timestamps
    end
  end
end
