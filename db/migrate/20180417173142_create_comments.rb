class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :content
      t.references :theate, foreign_key: true

      t.timestamps
    end
  end
end
