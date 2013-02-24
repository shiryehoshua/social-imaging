class CombinedImage < ActiveRecord::Base
  attr_accessible :filename
  has_many :image_sections
  after_create :create_image_sections

  def create_image_sections
    @image = ChunkyPNG::Image.from_file("app/assets/images/beyonce.png")
    num_image_sections = (@image.dimension.height / 30) * 
                         (@image.dimension.width / 30)
    x = y = 0
    partWidth = 30
    partHeight = 30
    until y > @image.dimension.height
      until x > @image.dimension.width
        self.image_sections << ImageSection.create(:height => partHeight, :width => partWidth, :left_coord => x, :right_coord => y)
        self.save
        puts "x: " + x.to_s + " y: " + y.to_s
        x += partWidth
      end
      x = 0
      y += 30
    end
  end
end
