class Book < ApplicationRecord
  has_many :book_genres
  has_many :genres, through: :book_genres

  def genre_attribute=(genre_attribute)
    genre = Genre.find_or_create_by(title: genre_attribute[:title])
    self.genres << genre if !self.genres.include?(genre)
  end
end
