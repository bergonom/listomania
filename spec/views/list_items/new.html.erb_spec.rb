require 'rails_helper'

RSpec.describe "list_items/new", :type => :view do
  before(:each) do
    assign(:list_item, ListItem.new(
      :title => "MyString",
      :description => "MyText",
      :list => nil
    ))
  end

  it "renders new list_item form" do
    render

    assert_select "form[action=?][method=?]", list_items_path, "post" do

      assert_select "input#list_item_title[name=?]", "list_item[title]"

      assert_select "textarea#list_item_description[name=?]", "list_item[description]"

      assert_select "input#list_item_list_id[name=?]", "list_item[list_id]"
    end
  end
end
