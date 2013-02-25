class ChangeDataTypeForColorsInImageSection < ActiveRecord::Migration
  def change
    change_column :image_sections, :colors, :text
  end
end
