class AddImageSectionsToCombinedImages < ActiveRecord::Migration
  def change
    add_column :combined_images, :image_section_id, :integer
  end
end
