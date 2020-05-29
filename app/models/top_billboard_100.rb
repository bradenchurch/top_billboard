class TopBillboard100 < ApplicationRecord
  has_many :top_artist dependent: :destroy

  validates :top_artist, :song, presence: true
end
