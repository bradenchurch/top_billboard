class TopBillboard100 < ApplicationRecord
  has_many :top_artist dependent: :destroy
end
