class CreateColors < ActiveRecord::Migration
  def change
    create_table :colors do |t|
      t.string :html_code

      t.timestamps
    end
  end
end
