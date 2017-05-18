class CreateBookGenres < ActiveRecord::Migration[5.0]
  def change
    create_table :book_genres do |t|
      t.references :book, foreign_key: true
      t.references :genre, foreign_key: true

      t.timestamps
    end
  end
end
