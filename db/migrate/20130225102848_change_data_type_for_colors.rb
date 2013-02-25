class ChangeDataTypeForColors < ActiveRecord::Migration
  def up
    change_table :image_sections do |t|
      t.change :colors, :string
    end
  end

  def down
    change_table :image_sections do |t|
      t.change :colors, :text
    end
  end
end
