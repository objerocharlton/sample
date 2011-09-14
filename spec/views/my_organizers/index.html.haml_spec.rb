require 'spec_helper'

describe "my_organizers/index.html.haml" do
  before(:each) do
    assign(:my_organizers, [
      stub_model(MyOrganizer,
        :title => "Title",
        :body => "MyText"
      ),
      stub_model(MyOrganizer,
        :title => "Title",
        :body => "MyText"
      )
    ])
  end

  it "renders a list of my_organizers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
