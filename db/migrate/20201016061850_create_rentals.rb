class CreateRentals < ActiveRecord::Migration[5.2]
  def change
    create_table :rentals do |t|
      t.date :lending_start_date, default: "Date.today", null: false
      t.date :lending_end_date, default: "1.week.ago", null: false
      t.integer :user_id, null: false
      t.integer :book_id, null: false

      t.timestamps
    end
  end
end
