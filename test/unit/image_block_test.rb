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

require 'test_helper'

class ImageBlockTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
