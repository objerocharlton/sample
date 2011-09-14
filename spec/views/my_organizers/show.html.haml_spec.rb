require 'spec_helper'

describe "my_organizers/show.html.haml" do
  before(:each) do
    @my_organizer = assign(:my_organizer, stub_model(MyOrganizer,
      :title => "Title",
      :body => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
