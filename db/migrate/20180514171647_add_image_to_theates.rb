class AddImageToTheates < ActiveRecord::Migration[5.1]
  def change
    add_column :theates, :image, :string
  end
end
