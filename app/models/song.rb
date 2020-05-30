class Song < ApplicationRecord
  belongs_to :top_artist

  validates :album, :title, :year_of_release, :plays, presence: true

  validates :title, uniqueness: true

end
