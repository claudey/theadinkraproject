class CreateAdinkraSymbols < ActiveRecord::Migration[5.1]
  def change
    create_table :adinkra_symbols do |t|
      t.string :name
      t.string :icon_png
      t.string :icon_svg
      t.string :translation
      t.string :meaning
      t.string :origin
      t.string :proverb
      t.string :theme

      t.timestamps
    end
  end
end
