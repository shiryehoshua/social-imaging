class AddColorsToImageSection < ActiveRecord::Migration
  def change
    add_column :image_sections, :colors, :string
  end
end
