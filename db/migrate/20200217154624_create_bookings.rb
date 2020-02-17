class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :kitchen, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.date :start_time
      t.date :end_time

      t.timestamps
    end
  end
end
