# == Schema Information
#
# Table name: combined_images
#
#  id               :integer          not null, primary key
#  filename         :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  image_section_id :integer
#

require 'spec_helper'

describe CombinedImage do
  pending "add some examples to (or delete) #{__FILE__}"
end
