# == Schema Information
#
# Table name: super_images
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'chunky_png'

class SuperImage < ActiveRecord::Base
  attr_accessible :name
  validates :name, presence: true
  @image = ChunkyPNG::Image.from_file('../../assets/beyonce.jpg')

  has_many :image_sections

  def after_create
    num_image_sections = (@image.dimension.height / 30) * 
                         (@image.dimension.width / 30)
    print num_image_section.to_s()
  end
end
