require 'spec_helper'

describe "image_sections/edit" do
  before(:each) do
    @image_section = assign(:image_section, stub_model(ImageSection,
      :left_coord => 1,
      :right_coord => 1,
      :width => 1,
      :height => 1,
      :sketchpad_json => "MyString"
    ))
  end

  it "renders the edit image_section form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => image_sections_path(@image_section), :method => "post" do
      assert_select "input#image_section_left_coord", :name => "image_section[left_coord]"
      assert_select "input#image_section_right_coord", :name => "image_section[right_coord]"
      assert_select "input#image_section_width", :name => "image_section[width]"
      assert_select "input#image_section_height", :name => "image_section[height]"
      assert_select "input#image_section_sketchpad_json", :name => "image_section[sketchpad_json]"
    end
  end
end
