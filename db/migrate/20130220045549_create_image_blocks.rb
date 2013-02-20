class CreateImageBlocks < ActiveRecord::Migration
  def change
    create_table :image_blocks do |t|
      t.integer :left_coord
      t.integer :right_coord
      t.integer :width
      t.integer :height

      t.timestamps
    end
  end
end
