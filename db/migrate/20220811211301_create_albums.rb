class CreateAlbums < ActiveRecord::Migration[7.0]
  def change
    create_table :albums do |t|
      t.string :title
      t.string :artist
      t.string :release
      t.text :body

      t.timestamps
    end
  end
end
