class RemoveAutorFromArtworks < ActiveRecord::Migration[5.2]
  def change
    remove_column :artworks, :autor, :string
  end
end
