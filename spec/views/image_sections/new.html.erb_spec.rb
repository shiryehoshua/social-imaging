require 'spec_helper'

describe "image_sections/new" do
  before(:each) do
    assign(:image_section, stub_model(ImageSection,
      :left_coord => 1,
      :right_coord => 1,
      :width => 1,
      :height => 1,
      :sketchpad_json => "MyString"
    ).as_new_record)
  end

  it "renders new image_section form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => image_sections_path, :method => "post" do
      assert_select "input#image_section_left_coord", :name => "image_section[left_coord]"
      assert_select "input#image_section_right_coord", :name => "image_section[right_coord]"
      assert_select "input#image_section_width", :name => "image_section[width]"
      assert_select "input#image_section_height", :name => "image_section[height]"
      assert_select "input#image_section_sketchpad_json", :name => "image_section[sketchpad_json]"
    end
  end
end
