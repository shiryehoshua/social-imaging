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
end
