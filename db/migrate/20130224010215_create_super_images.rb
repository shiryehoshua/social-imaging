class CreateSuperImages < ActiveRecord::Migration
  def change
    create_table :super_images do |t|
      t.string :name

      t.timestamps
    end
  end
end
