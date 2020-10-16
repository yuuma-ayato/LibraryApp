class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title, limit: 255, null: false
      t.string :author, limit: 255, null: false
      t.text :content, limit: 500, null: false

      t.timestamps
    end
  end
end
