require 'spec_helper'

describe "image_sections/show" do
  before(:each) do
    @image_section = assign(:image_section, stub_model(ImageSection,
      :left_coord => 1,
      :right_coord => 2,
      :width => 3,
      :height => 4,
      :sketchpad_json => "Sketchpad Json"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/Sketchpad Json/)
  end
end
