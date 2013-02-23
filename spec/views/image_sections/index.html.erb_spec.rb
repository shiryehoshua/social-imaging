require 'spec_helper'

describe "image_sections/index" do
  before(:each) do
    assign(:image_sections, [
      stub_model(ImageSection,
        :left_coord => 1,
        :right_coord => 2,
        :width => 3,
        :height => 4,
        :sketchpad_json => "Sketchpad Json"
      ),
      stub_model(ImageSection,
        :left_coord => 1,
        :right_coord => 2,
        :width => 3,
        :height => 4,
        :sketchpad_json => "Sketchpad Json"
      )
    ])
  end

  it "renders a list of image_sections" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "Sketchpad Json".to_s, :count => 2
  end
end
