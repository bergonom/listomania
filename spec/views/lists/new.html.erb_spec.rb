require 'rails_helper'

RSpec.describe "lists/new", :type => :view do
  before(:each) do
    assign(:list, List.new(
      :title => "MyString",
      :description => "MyText",
      :user => nil
    ))
  end

  it "renders new list form" do
    render

    assert_select "form[action=?][method=?]", lists_path, "post" do

      assert_select "input#list_title[name=?]", "list[title]"

      assert_select "textarea#list_description[name=?]", "list[description]"

      assert_select "input#list_user_id[name=?]", "list[user_id]"
    end
  end
end
