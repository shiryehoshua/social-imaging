# == Schema Information
#
# Table name: image_sections
#
#  id             :integer          not null, primary key
#  left_coord     :integer
#  right_coord    :integer
#  width          :integer
#  height         :integer
#  sketchpad_json :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class ImageSection < ActiveRecord::Base
  attr_accessible :height, :left_coord, :right_coord, :sketchpad_json, :width, :colors
  belongs_to :combined_image

  def get_left_pixel_pos
    return self.right_coord + (2 * self.right_coord / 30)
  end

  def get_top_pixel_pos
    return self.left_coord + (2 * self.left_coord / 30)
  end

  def colors_without_opacity
    cwo = []
    self.get_color_list.each do |color|
      cwo << color[0..5]
    end
    return cwo
  end

  def get_color_list
    return colors.split(' ')
  end
end
