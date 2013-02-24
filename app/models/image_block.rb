# == Schema Information
#
# Table name: image_blocks
#
#  id          :integer          not null, primary key
#  left_coord  :integer
#  right_coord :integer
#  width       :integer
#  height      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class ImageBlock < ActiveRecord::Base
  attr_accessible :height, :left_coord, :right_coord, :width
end
