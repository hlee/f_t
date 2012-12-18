require 'spec_helper'

describe "things/show" do
  before(:each) do
    @thing = assign(:thing, stub_model(Thing,
      :name => "Name",
      :user => nil,
      :image_url => "Image Url",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(//)
    rendered.should match(/Image Url/)
    rendered.should match(/MyText/)
  end
end
