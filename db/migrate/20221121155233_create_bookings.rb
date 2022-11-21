class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.date :start_time
      t.date :end_time
      t.integer :total_price
      t.string :status
      t.references :user, null: false, foreign_key: true
      t.references :chair, null: false, foreign_key: true

      t.timestamps
    end
  end
end
