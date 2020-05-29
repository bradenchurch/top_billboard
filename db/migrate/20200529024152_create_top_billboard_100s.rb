class CreateTopBillboard100s < ActiveRecord::Migration[6.0]
  def change
    create_table :top_billboard_100s do |t|
      t.string :artist
      t.string :most_played_song
      t.string :albums_sold

      t.timestamps
    end
  end
end
