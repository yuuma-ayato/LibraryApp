class RemoveColumnsFromRentals < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key  :rentals,  :books
    remove_index :rentals, :book_id
    remove_reference :rentals, :book
    remove_column :rentals, :user_id
  end
end
