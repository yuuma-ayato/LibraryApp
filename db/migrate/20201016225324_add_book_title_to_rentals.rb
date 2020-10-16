class AddBookTitleToRentals < ActiveRecord::Migration[5.2]
  def change
    add_column :rentals, :book_name, :string, null:false, default: 1
    change_column_default :rentals, :book_name, nil
  end
end
