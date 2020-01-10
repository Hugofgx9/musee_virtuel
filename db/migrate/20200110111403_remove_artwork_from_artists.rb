class RemoveArtworkFromArtists < ActiveRecord::Migration[5.2]
  def change
    remove_column :artists, :artwork, :string
  end
end
