class CreateBillboards < ActiveRecord::Migration[6.0]
  def change
    create_table :billboards do |t|
      t.string :artist
      t.string :most_played_song
      t.string :albums_sold

      t.timestamps
    end
  end
end
