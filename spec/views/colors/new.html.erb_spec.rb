require 'spec_helper'

describe "colors/new" do
  before(:each) do
    assign(:color, stub_model(Color,
      :html_code => "MyString"
    ).as_new_record)
  end

  it "renders new color form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => colors_path, :method => "post" do
      assert_select "input#color_html_code", :name => "color[html_code]"
    end
  end
end
