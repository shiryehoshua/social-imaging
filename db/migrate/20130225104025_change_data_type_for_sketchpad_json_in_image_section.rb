class ChangeDataTypeForSketchpadJsonInImageSection < ActiveRecord::Migration
  def change
    change_column :image_sections, :sketchpad_json, :text
  end
end
