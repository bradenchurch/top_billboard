class Billboard < ApplicationRecord
  has_many :top_artist, dependent: :destroy

  validates :top_artist, :most_played_song, :albums_sold, presence: true
end
