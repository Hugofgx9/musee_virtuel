class CreateExhibs < ActiveRecord::Migration[5.2]
  def change
    create_table :exhibs do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
