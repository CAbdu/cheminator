class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.integer :rating
      t.text :review
      t.references :user, foreign_key: true
      t.references :planet, foreign_key: true

      t.timestamps
    end
  end
end
