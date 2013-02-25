require 'spec_helper'

describe "colors/edit" do
  before(:each) do
    @color = assign(:color, stub_model(Color,
      :html_code => "MyString"
    ))
  end

  it "renders the edit color form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => colors_path(@color), :method => "post" do
      assert_select "input#color_html_code", :name => "color[html_code]"
    end
  end
end
