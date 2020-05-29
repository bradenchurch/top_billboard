class CreateTopArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :top_artists do |t|
      t.string :name
      t.string :genre
      t.integer :subscribers
      t.integer :debut

      t.timestamps
    end
  end
end
