require 'rails_helper'

RSpec.describe "list_items/index", :type => :view do
  before(:each) do
    assign(:list_items, [
      ListItem.create!(
        :title => "Title",
        :description => "MyText",
        :list => nil
      ),
      ListItem.create!(
        :title => "Title",
        :description => "MyText",
        :list => nil
      )
    ])
  end

  it "renders a list of list_items" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
