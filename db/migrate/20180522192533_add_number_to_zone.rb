class AddNumberToZone < ActiveRecord::Migration[5.1]

    def change
      change_column(:zones, :number, :text)
    end

end
