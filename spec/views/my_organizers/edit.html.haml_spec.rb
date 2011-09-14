require 'spec_helper'

describe "my_organizers/edit.html.haml" do
  before(:each) do
    @my_organizer = assign(:my_organizer, stub_model(MyOrganizer,
      :title => "MyString",
      :body => "MyText"
    ))
  end

  it "renders the edit my_organizer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => my_organizers_path(@my_organizer), :method => "post" do
      assert_select "input#my_organizer_title", :name => "my_organizer[title]"
      assert_select "textarea#my_organizer_body", :name => "my_organizer[body]"
    end
  end
end
