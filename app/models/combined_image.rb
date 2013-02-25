class CombinedImage < ActiveRecord::Base
  attr_accessible :filename
  has_many :image_sections
  after_create :create_image_sections

  def get_image_width
    return @image.dimension.width
  end

  def create_image_sections
    @image = ChunkyPNG::Image.from_file("app/assets/images/" + self.filename)
    num_image_sections = (@image.dimension.height / 30) * 
                         (@image.dimension.width / 30)
    x = y = 0
    partWidth = 30
    partHeight = 30
    until y + partHeight > @image.dimension.height
      until x + partWidth > @image.dimension.width
        new_image_section = ImageSection.create(:height => partHeight, :width => partWidth, :left_coord => x, :right_coord => y, :colors => get_list_colors(x, y, partWidth, partHeight))
        self.image_sections << new_image_section
        self.save
        puts "x: " + x.to_s + " y: " + y.to_s
        x += partWidth
      end
      x = 0
      y += 30
    end
    puts "AHHHHH\n\n\n\n\n" + self.image_sections.length.to_s + "\n\n\n\n\n"
  end

  def get_list_colors(x, y, width, height)
    colors = []
    puts "at: x= " + x.to_s + ", y= " + y.to_s + ", w= " + width.to_s + ", h= " + height.to_s
    y.upto(y + width - 1) do |j|
      x.upto(x + width - 1) do |i|
        if !colors.include? @image[i,j].to_s(16)
          colors << " " + @image[i,j].to_s(16)
        end
      end
    end
    return colors.uniq.join(' ')
  end
end
