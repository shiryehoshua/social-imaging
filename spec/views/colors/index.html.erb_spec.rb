require 'spec_helper'

describe "colors/index" do
  before(:each) do
    assign(:colors, [
      stub_model(Color,
        :html_code => "Html Code"
      ),
      stub_model(Color,
        :html_code => "Html Code"
      )
    ])
  end

  it "renders a list of colors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Html Code".to_s, :count => 2
  end
end
