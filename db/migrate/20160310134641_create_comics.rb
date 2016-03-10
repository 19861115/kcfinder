class CreateComics < ActiveRecord::Migration
  def change
    create_table :comics do |t|
      t.string :asin
      t.string :image_path
      t.references :author, index: true, foreign_key: true
      t.references :publisher, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
