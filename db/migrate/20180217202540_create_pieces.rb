class CreatePieces < ActiveRecord::Migration[5.1]
  def change
    create_table :pieces do |t|
      t.string :artist
      t.string :image_url
      t.string :neighborhood
      t.float :lat
      t.float :lng

      t.timestamps
    end
  end
end
