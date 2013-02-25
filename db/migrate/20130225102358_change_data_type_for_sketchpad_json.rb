class ChangeDataTypeForSketchpadJson < ActiveRecord::Migration
  def up
    change_table :image_sections do |t|
      t.change :sketchpad_json, :string
    end
  end

  def down
    change_table :image_sections do |t|
      t.change :sketchpad_json, :text
    end
  end
end
