require 'spec_helper'

describe "combined_images/edit" do
  before(:each) do
    @combined_image = assign(:combined_image, stub_model(CombinedImage,
      :filename => "MyString"
    ))
  end

  it "renders the edit combined_image form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => combined_images_path(@combined_image), :method => "post" do
      assert_select "input#combined_image_filename", :name => "combined_image[filename]"
    end
  end
end
