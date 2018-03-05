class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.references :boat, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.references :user, foreign_key: true
      t.string :status, default: "Pending"
      t.text :description

      t.timestamps
    end
  end
end
