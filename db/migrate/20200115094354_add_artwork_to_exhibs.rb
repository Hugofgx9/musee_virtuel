class AddArtworkToExhibs < ActiveRecord::Migration[5.2]
  def change
    add_reference :exhibs, :artwork, foreign_key: true
  end
end
