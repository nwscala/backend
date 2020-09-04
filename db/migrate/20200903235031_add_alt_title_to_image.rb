class AddAltTitleToImage < ActiveRecord::Migration[6.0]
  def change
    add_column :images, :alt, :string
    add_column :images, :title, :string
  end
end
