class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :surname
      t.string :name
      t.string :patronymic
      t.text :content
      t.references :perfomance, foreign_key: true

      t.timestamps
    end
  end
end
