class AddCombinedImagesToImageSections < ActiveRecord::Migration
  def change
    add_column :image_sections, :combined_image_id, :integer
  end
end
