class CreateBoats < ActiveRecord::Migration[5.1]
  def change
    create_table :boats do |t|
      t.references :user, foreign_key: true
      t.string :make
      t.string :model
      t.string :boat_type
      t.integer :capacity
      t.integer :year
      t.string :location
      t.float :price
      t.string :photo

      t.timestamps
    end
  end
end
