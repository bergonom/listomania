require 'rails_helper'

RSpec.describe "list_items/edit", :type => :view do
  before(:each) do
    @list_item = assign(:list_item, ListItem.create!(
      :title => "MyString",
      :description => "MyText",
      :list => nil
    ))
  end

  it "renders the edit list_item form" do
    render

    assert_select "form[action=?][method=?]", list_item_path(@list_item), "post" do

      assert_select "input#list_item_title[name=?]", "list_item[title]"

      assert_select "textarea#list_item_description[name=?]", "list_item[description]"

      assert_select "input#list_item_list_id[name=?]", "list_item[list_id]"
    end
  end
end
