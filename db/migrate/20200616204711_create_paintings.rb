class CreatePaintings < ActiveRecord::Migration[6.0]
  def change
    create_table :paintings do |t|
      t.string :title
      t.string :style
      t.string :price
      t.string :url
      t.belongs_to :artist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
