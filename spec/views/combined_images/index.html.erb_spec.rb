require 'spec_helper'

describe "combined_images/index" do
  before(:each) do
    assign(:combined_images, [
      stub_model(CombinedImage,
        :filename => "Filename"
      ),
      stub_model(CombinedImage,
        :filename => "Filename"
      )
    ])
  end

  it "renders a list of combined_images" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Filename".to_s, :count => 2
  end
end
