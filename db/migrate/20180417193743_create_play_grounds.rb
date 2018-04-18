class CreatePlayGrounds < ActiveRecord::Migration[5.1]
  def change
    create_table :play_grounds do |t|
      t.text :address
      t.integer :seats

      t.timestamps
    end
  end
end
