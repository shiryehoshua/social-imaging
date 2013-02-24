class CreateCombinedImages < ActiveRecord::Migration
  def change
    create_table :combined_images do |t|
      t.string :filename

      t.timestamps
    end
  end
end
