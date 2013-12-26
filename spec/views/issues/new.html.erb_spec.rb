require 'spec_helper'

describe "issues/new" do
  before(:each) do
    assign(:issue, stub_model(Issue,
      :title => "MyString",
      :description => "MyText",
      :is_reproducible => false,
      :category => "MyString"
    ).as_new_record)
  end

  it "renders new issue form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", issues_path, "post" do
      assert_select "input#issue_title[name=?]", "issue[title]"
      assert_select "textarea#issue_description[name=?]", "issue[description]"
      assert_select "input#issue_is_reproducible[name=?]", "issue[is_reproducible]"
      assert_select "input#issue_category[name=?]", "issue[category]"
    end
  end
end
