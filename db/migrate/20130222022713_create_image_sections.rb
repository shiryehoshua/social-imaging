class CreateImageSections < ActiveRecord::Migration
  def change
    create_table :image_sections do |t|
      t.integer :left_coord
      t.integer :right_coord
      t.integer :width
      t.integer :height
      t.string :sketchpad_json

      t.timestamps
    end
  end
end
