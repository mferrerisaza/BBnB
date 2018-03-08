class AddNameToBoats < ActiveRecord::Migration[5.1]
  def change
    add_column :boats, :name, :string
  end
end
