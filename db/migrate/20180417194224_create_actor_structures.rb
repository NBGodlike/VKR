class CreateActorStructures < ActiveRecord::Migration[5.1]
  def change
    create_table :actor_structures do |t|
      t.string :role
      t.references :actor, foreign_key: true
      t.references :perfomance, foreign_key: true

      t.timestamps
    end
  end
end
