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

require 'spec_helper'

describe ImageSection do
  pending "add some examples to (or delete) #{__FILE__}"
end
