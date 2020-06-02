class TopBillboard100 < ApplicationRecord
  has_many :top_artist dependent: :destroy

  validates :artist, :most_played_song, :albums_sold, presence: true
end
