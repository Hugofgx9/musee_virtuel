class CreateArtworks < ActiveRecord::Migration[5.2]
  def change
    create_table :artworks do |t|
      t.string :title
      t.string :autor
      t.integer :year
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end
