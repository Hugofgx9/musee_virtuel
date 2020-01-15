class AddExhibToArtworks < ActiveRecord::Migration[5.2]
  def change
    add_reference :artworks, :exhib, foreign_key: true
  end
end
