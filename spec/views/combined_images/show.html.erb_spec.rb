require 'spec_helper'

describe "combined_images/show" do
  before(:each) do
    @combined_image = assign(:combined_image, stub_model(CombinedImage,
      :filename => "Filename"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Filename/)
  end
end
