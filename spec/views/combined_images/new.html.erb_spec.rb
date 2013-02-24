require 'spec_helper'

describe "combined_images/new" do
  before(:each) do
    assign(:combined_image, stub_model(CombinedImage,
      :filename => "MyString"
    ).as_new_record)
  end

  it "renders new combined_image form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => combined_images_path, :method => "post" do
      assert_select "input#combined_image_filename", :name => "combined_image[filename]"
    end
  end
end
