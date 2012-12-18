require 'spec_helper'

describe "things/edit" do
  before(:each) do
    @thing = assign(:thing, stub_model(Thing,
      :name => "MyString",
      :user => nil,
      :image_url => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit thing form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => things_path(@thing), :method => "post" do
      assert_select "input#thing_name", :name => "thing[name]"
      assert_select "input#thing_user", :name => "thing[user]"
      assert_select "input#thing_image_url", :name => "thing[image_url]"
      assert_select "textarea#thing_description", :name => "thing[description]"
    end
  end
end
