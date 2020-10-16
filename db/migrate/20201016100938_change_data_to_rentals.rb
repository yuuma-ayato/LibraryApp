class ChangeDataToRentals < ActiveRecord::Migration[5.2]
  def change
    change_column_default :rentals, :lending_start_date, null: false, default: Date.today
    change_column_default :rentals, :lending_end_date, null: false, default: 1.week.ago
  end
end
