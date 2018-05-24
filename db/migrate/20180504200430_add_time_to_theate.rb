class AddTimeToTheate < ActiveRecord::Migration[5.1]
  def change
    add_column :theates, :time, :datetime
  end
end
