class TopArtist < ApplicationRecord
  has_many :song dependent: :destroy

  belongs_to :top_billboard_100
end
