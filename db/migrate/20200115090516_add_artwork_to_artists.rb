class AddArtworkToArtists < ActiveRecord::Migration[5.2]
  def change
    add_reference :artists, :artwork, foreign_key: true
  end
end
