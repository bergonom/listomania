require 'rails_helper'

RSpec.describe "list_items/show", :type => :view do
  before(:each) do
    @list_item = assign(:list_item, ListItem.create!(
      :title => "Title",
      :description => "MyText",
      :list => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
