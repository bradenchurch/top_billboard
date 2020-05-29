class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :album
      t.integer :year_of_release
      t.integer :plays

      t.timestamps
    end
  end
end
