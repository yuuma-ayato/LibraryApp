class RemoveBookIdFromRentals < ActiveRecord::Migration[5.2]
  def change
    remove_column :rentals, :book_id
  end
end
