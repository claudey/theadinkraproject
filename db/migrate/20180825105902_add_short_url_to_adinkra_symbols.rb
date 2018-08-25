class AddShortUrlToAdinkraSymbols < ActiveRecord::Migration[5.1]
  def change
    add_column :adinkra_symbols, :short_url, :string
  end
end
