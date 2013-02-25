class Color < ActiveRecord::Base
  attr_accessible :html_code
  belongs_to :image_section
end
